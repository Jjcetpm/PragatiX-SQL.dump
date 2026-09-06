CREATE DATABASE  IF NOT EXISTS `pragatix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pragatix`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pragatix
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;


--
-- Table structure for table `academic_holiday`
--

DROP TABLE IF EXISTS `academic_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_holiday` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `holiday_date` date NOT NULL,
  `holiday_name` varchar(255) NOT NULL,
  `academic_month_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpkyjlle225v8tu8nu8hohby6o` (`academic_month_id`),
  CONSTRAINT `FKpkyjlle225v8tu8nu8hohby6o` FOREIGN KEY (`academic_month_id`) REFERENCES `academic_month` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_holiday`
--

LOCK TABLES `academic_holiday` WRITE;
/*!40000 ALTER TABLE `academic_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academic_month`
--

DROP TABLE IF EXISTS `academic_month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_month` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `month` int NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `year` int NOT NULL,
  `academic_year_enum` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_month`
--

LOCK TABLES `academic_month` WRITE;
/*!40000 ALTER TABLE `academic_month` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic_month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academic_week`
--

DROP TABLE IF EXISTS `academic_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_week` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `end_date` date NOT NULL,
  `start_date` date NOT NULL,
  `week_number` int NOT NULL,
  `academic_month_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo4fja4rpe0m44rdyg4xyy7hjf` (`academic_month_id`),
  CONSTRAINT `FKo4fja4rpe0m44rdyg4xyy7hjf` FOREIGN KEY (`academic_month_id`) REFERENCES `academic_month` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_week`
--

LOCK TABLES `academic_week` WRITE;
/*!40000 ALTER TABLE `academic_week` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic_week` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academic_years`
--

DROP TABLE IF EXISTS `academic_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_years` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `academic_year` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `academic_year` (`academic_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_years`
--

LOCK TABLES `academic_years` WRITE;
/*!40000 ALTER TABLE `academic_years` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `stage_id` bigint DEFAULT NULL,
  `activity_name` varchar(255) NOT NULL,
  `activity_description` text,
  `mode_type` varchar(50) NOT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `max_points` int NOT NULL,
  `xp` varchar(100) DEFAULT NULL,
  `cap` varchar(100) DEFAULT NULL,
  `is_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `evidence_required` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category` varchar(50) DEFAULT NULL,
  `description` text,
  `evidence` varchar(255) DEFAULT NULL,
  `justification` text,
  `name` varchar(255) NOT NULL,
  `owner_department` varchar(100) DEFAULT NULL,
  `owner_subrole` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `xp_category` varchar(100) DEFAULT NULL,
  `subgroup_id` bigint NOT NULL,
  `department_id` varchar(50) DEFAULT NULL,
  `teacher_id` varchar(50) DEFAULT NULL,
  `display_order` int NOT NULL,
  `maximum_awards` int DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `award_type` varchar(50) NOT NULL,
  `award_xp` int NOT NULL,
  `repeat_allowed` bit(1) NOT NULL,
  `reset_period` varchar(50) DEFAULT NULL,
  `award_days` varchar(200) DEFAULT NULL,
  `award_frequency` varchar(50) DEFAULT NULL,
  `xp_type` varchar(50) DEFAULT NULL,
  `fail_xp` int DEFAULT '0',
  `pass_xp` int DEFAULT '0',
  `award_enabled` bit(1) NOT NULL,
  `penalty_enabled` bit(1) NOT NULL,
  `penalty_xp` int NOT NULL,
  `assignment_mode` varchar(50) DEFAULT NULL,
  `subgroup` varchar(255) DEFAULT NULL,
  `allow_student_request` bit(1) DEFAULT NULL,
  `assigned_academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  `attendance_engine_enabled` bit(1) NOT NULL,
  `attendance_rule` varchar(20) DEFAULT NULL,
  `manual_evidence_name` varchar(255) DEFAULT NULL,
  `streak_enabled` bit(1) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_activity_subgroup` (`subgroup_id`,`activity_name`),
  UNIQUE KEY `uq_activity` (`category_id`,`activity_name`),
  KEY `activities_ibfk_2` (`stage_id`),
  KEY `FK7sdf72jxqeia9stse1x05o1mq` (`subgroup_id`),
  CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `activity_categories` (`id`),
  CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FK7sdf72jxqeia9stse1x05o1mq` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_assignments`
--

DROP TABLE IF EXISTS `activity_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_assignments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `faculty_id` bigint DEFAULT NULL,
  `assigned_date` date NOT NULL DEFAULT (curdate()),
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assigned_at` datetime(6) NOT NULL,
  `assigned_by_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `teacher_id` bigint DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `assignment_scope` enum('DEPARTMENT','GLOBAL','SECTION','SPECIFIC_FACULTY') NOT NULL,
  `stage_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_activity_assignment` (`activity_id`,`section_id`,`faculty_id`),
  KEY `activity_assignments_ibfk_2` (`section_id`),
  KEY `activity_assignments_ibfk_3` (`faculty_id`),
  KEY `FKs6rb1fk0d3b4fmrpjs6ka2i4q` (`assigned_by_id`),
  KEY `FKs7l7yvgwwafjp00ii2yamsndp` (`department_id`),
  KEY `FKbo8m8a2oca785upuafbp48lov` (`teacher_id`),
  KEY `FKdksttwvyj7vewlu9fnm9ib250` (`stage_id`),
  CONSTRAINT `activity_assignments_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `activity_assignments_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `activity_assignments_ibfk_3` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  CONSTRAINT `FKbo8m8a2oca785upuafbp48lov` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKdksttwvyj7vewlu9fnm9ib250` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FKs6rb1fk0d3b4fmrpjs6ka2i4q` FOREIGN KEY (`assigned_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKs7l7yvgwwafjp00ii2yamsndp` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_assignments`
--

LOCK TABLES `activity_assignments` WRITE;
/*!40000 ALTER TABLE `activity_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_categories`
--

DROP TABLE IF EXISTS `activity_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  `description` text,
  `display_order` int DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKcm823wq9q2cv14infumyauwmu` (`name`),
  UNIQUE KEY `activity_name` (`activity_name`),
  KEY `idx_activity_cat_name` (`name`),
  KEY `idx_activity_cat_deleted` (`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_categories`
--

LOCK TABLES `activity_categories` WRITE;
/*!40000 ALTER TABLE `activity_categories` DISABLE KEYS */;
INSERT INTO `activity_categories` VALUES (1,'Academic','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Academic related activities and events',1,NULL,'Academic',NULL),(2,'Skill','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Skill related activities and events',2,NULL,'Skill',NULL),(3,'Communication','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Communication related activities and events',3,NULL,'Communication',NULL),(4,'Leadership','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Leadership related activities and events',4,NULL,'Leadership',NULL),(5,'Discipline','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Discipline related activities and events',5,NULL,'Discipline',NULL),(6,'Placement','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Placement related activities and events',6,NULL,'Placement',NULL),(7,'Innovation','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Innovation related activities and events',7,NULL,'Innovation',NULL),(8,'Community','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Community related activities and events',8,NULL,'Community',NULL),(9,'Sports','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Sports related activities and events',9,NULL,'Sports',NULL),(10,'Cultural','2026-09-05 07:46:49','2026-09-05 07:46:49',_binary '\0',NULL,NULL,'Cultural related activities and events',10,NULL,'Cultural',NULL);
/*!40000 ALTER TABLE `activity_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_completion_requests`
--

DROP TABLE IF EXISTS `activity_completion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_completion_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint NOT NULL,
  `team_id` bigint DEFAULT NULL,
  `activity_id` bigint NOT NULL,
  `cc_id` bigint DEFAULT NULL,
  `proof_url` varchar(500) DEFAULT NULL,
  `reason` text,
  `status` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `rejected_reason` text,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_acr_student` (`student_id`),
  KEY `fk_acr_team` (`team_id`),
  KEY `fk_acr_activity` (`activity_id`),
  KEY `fk_acr_cc` (`cc_id`),
  CONSTRAINT `fk_acr_activity` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `fk_acr_cc` FOREIGN KEY (`cc_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_acr_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `fk_acr_team` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_completion_requests`
--

LOCK TABLES `activity_completion_requests` WRITE;
/*!40000 ALTER TABLE `activity_completion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_completion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_evidences`
--

DROP TABLE IF EXISTS `activity_evidences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_evidences` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  `description` text,
  `display_order` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK8uxt1xh53on0bmui8ebiy7cuy` (`name`),
  KEY `idx_activity_evidence_name` (`name`),
  KEY `idx_activity_evidence_deleted` (`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_evidences`
--

LOCK TABLES `activity_evidences` WRITE;
/*!40000 ALTER TABLE `activity_evidences` DISABLE KEYS */;
INSERT INTO `activity_evidences` VALUES (1,NULL,_binary '\0',NULL,NULL,'Handwritten verification evidence',1,'Handwritten',NULL,NULL),(2,NULL,_binary '\0',NULL,NULL,'Soft Copy verification evidence',2,'Soft Copy',NULL,NULL),(3,NULL,_binary '\0',NULL,NULL,'Diary / Notebook verification evidence',3,'Diary / Notebook',NULL,NULL),(4,NULL,_binary '\0',NULL,NULL,'Weekly Log verification evidence',4,'Weekly Log',NULL,NULL),(5,NULL,_binary '\0',NULL,NULL,'Direct Observation verification evidence',5,'Direct Observation',NULL,NULL),(6,NULL,_binary '\0',NULL,NULL,'Attendance Register verification evidence',6,'Attendance Register',NULL,NULL),(7,NULL,_binary '\0',NULL,NULL,'ERP Attendance verification evidence',7,'ERP Attendance',NULL,NULL);
/*!40000 ALTER TABLE `activity_evidences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_stage_mappings`
--

DROP TABLE IF EXISTS `activity_stage_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_stage_mappings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `display_order` int NOT NULL,
  `activity_id` bigint NOT NULL,
  `stage_id` bigint NOT NULL,
  `subgroup_id` bigint NOT NULL,
  `award_enabled` bit(1) DEFAULT NULL,
  `award_frequency` varchar(50) DEFAULT NULL,
  `award_xp` int DEFAULT NULL,
  `penalty_enabled` bit(1) DEFAULT NULL,
  `penalty_xp` int DEFAULT NULL,
  `assignment_mode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_stage_activity` (`stage_id`,`activity_id`),
  KEY `FK1laou9t3uc6gsexeng82y5smb` (`activity_id`),
  KEY `FKl4jjroqh5ffcxbcnyf6y4s374` (`subgroup_id`),
  CONSTRAINT `FK1laou9t3uc6gsexeng82y5smb` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `FKl4jjroqh5ffcxbcnyf6y4s374` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`),
  CONSTRAINT `FKrrtriom1ji8mf8ojvds2d2gsn` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_stage_mappings`
--

LOCK TABLES `activity_stage_mappings` WRITE;
/*!40000 ALTER TABLE `activity_stage_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_stage_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_stages`
--

DROP TABLE IF EXISTS `activity_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_stages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stage_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `display_order` int NOT NULL,
  `is_active` bit(1) NOT NULL,
  `expected_xp` int NOT NULL DEFAULT '0',
  `status` enum('ACTIVE','COMPLETED','UPCOMING') NOT NULL,
  `group_threshold` int NOT NULL,
  `individual_threshold` int NOT NULL,
  `must_threshold` int NOT NULL,
  `end_datetime` datetime(6) DEFAULT NULL,
  `start_datetime` datetime(6) DEFAULT NULL,
  `use_combined_validation` bit(1) NOT NULL,
  `use_date_validation` bit(1) NOT NULL,
  `use_threshold_validation` bit(1) NOT NULL,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` datetime(6) DEFAULT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_stage_name` (`stage_name`),
  UNIQUE KEY `UK94qv2sd8jwbxsmdv8r4aibi7v` (`name`),
  UNIQUE KEY `uq_stage_name_year` (`stage_name`,`academic_year`),
  UNIQUE KEY `uq_name_year` (`name`,`academic_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_stages`
--

LOCK TABLES `activity_stages` WRITE;
/*!40000 ALTER TABLE `activity_stages` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_subgroups`
--

DROP TABLE IF EXISTS `activity_subgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_subgroups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `threshold` int NOT NULL,
  `assigned_department_id` bigint DEFAULT NULL,
  `assigned_faculty_id` bigint DEFAULT NULL,
  `stage_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgvax9c9kfqxfvdjpago66nr8a` (`assigned_department_id`),
  KEY `FK1vp1g018b7stosiid9rg14tqd` (`assigned_faculty_id`),
  KEY `FK7wnk9awbww7qjslomg21f7hrm` (`stage_id`),
  CONSTRAINT `FK1vp1g018b7stosiid9rg14tqd` FOREIGN KEY (`assigned_faculty_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK7wnk9awbww7qjslomg21f7hrm` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FKgvax9c9kfqxfvdjpago66nr8a` FOREIGN KEY (`assigned_department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_subgroups`
--

LOCK TABLES `activity_subgroups` WRITE;
/*!40000 ALTER TABLE `activity_subgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_subgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_temporary_assignments`
--

DROP TABLE IF EXISTS `activity_temporary_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_temporary_assignments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment_date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `expiry_date` date NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `activity_id` bigint NOT NULL,
  `assigned_by_id` bigint NOT NULL,
  `department_id` bigint DEFAULT NULL,
  `original_teacher_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `stage_id` bigint DEFAULT NULL,
  `temporary_teacher_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmogsb78spqd37xgsxwgv8ok8a` (`activity_id`),
  KEY `FK56o2ppc9fmguwe50j3bwe6dqv` (`assigned_by_id`),
  KEY `FKmo828t9rjm284woyxgyhuc714` (`department_id`),
  KEY `FKcs7aqbqtm4u3kyngp7r2urvdq` (`original_teacher_id`),
  KEY `FKoo82tddbwkc0wdufjyqp99rxb` (`section_id`),
  KEY `FKdofnumn3dwi7bfppifvioqc53` (`stage_id`),
  KEY `FKoctl8ut8ejgr4f45oxrybpnuh` (`temporary_teacher_id`),
  CONSTRAINT `FK56o2ppc9fmguwe50j3bwe6dqv` FOREIGN KEY (`assigned_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKcs7aqbqtm4u3kyngp7r2urvdq` FOREIGN KEY (`original_teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKdofnumn3dwi7bfppifvioqc53` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FKmo828t9rjm284woyxgyhuc714` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `FKmogsb78spqd37xgsxwgv8ok8a` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `FKoctl8ut8ejgr4f45oxrybpnuh` FOREIGN KEY (`temporary_teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKoo82tddbwkc0wdufjyqp99rxb` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_temporary_assignments`
--

LOCK TABLES `activity_temporary_assignments` WRITE;
/*!40000 ALTER TABLE `activity_temporary_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_temporary_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alternate_working_day`
--

DROP TABLE IF EXISTS `alternate_working_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternate_working_day` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `effective_date` date NOT NULL,
  `original_holiday_day` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `working_day` varchar(255) NOT NULL,
  `academic_calendar_month_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhhql9tdp4yqtibhjbqt1or8kp` (`academic_calendar_month_id`),
  CONSTRAINT `FKhhql9tdp4yqtibhjbqt1or8kp` FOREIGN KEY (`academic_calendar_month_id`) REFERENCES `academic_month` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternate_working_day`
--

LOCK TABLES `alternate_working_day` WRITE;
/*!40000 ALTER TABLE `alternate_working_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `alternate_working_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint NOT NULL,
  `faculty_id` bigint DEFAULT NULL,
  `status` enum('PRESENT','ABSENT','OD','LEAVE') NOT NULL DEFAULT 'PRESENT',
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_no` varchar(255) NOT NULL,
  `attendance_date` date NOT NULL DEFAULT '2026-01-01',
  `period_no` int NOT NULL DEFAULT '1',
  `subject_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_attendance_student_date_period` (`student_id`,`attendance_date`,`period_no`),
  KEY `fk_attendance_faculty` (`faculty_id`),
  KEY `FK6rbdq2aqpc01xhtp5d65mi4a4` (`reg_no`),
  KEY `FKcjg1qkkmmy4dtktcdug457x4p` (`subject_id`),
  CONSTRAINT `fk_attendance_faculty` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  CONSTRAINT `fk_attendance_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKcjg1qkkmmy4dtktcdug457x4p` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_engine_executions`
--

DROP TABLE IF EXISTS `attendance_engine_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_engine_executions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `absent_count` int DEFAULT NULL,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') NOT NULL,
  `completed_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `engine_type` varchar(20) NOT NULL,
  `error_message` varchar(1000) DEFAULT NULL,
  `execution_time_ms` bigint DEFAULT NULL,
  `execution_type` varchar(20) NOT NULL,
  `failure_count` int DEFAULT NULL,
  `penalties_applied` int DEFAULT NULL,
  `period_end` date NOT NULL,
  `period_start` date NOT NULL,
  `present_count` int DEFAULT NULL,
  `processed_count` int DEFAULT NULL,
  `skipped_count` int DEFAULT NULL,
  `started_at` datetime(6) NOT NULL,
  `status` varchar(20) NOT NULL,
  `streaks_updated` int DEFAULT NULL,
  `triggered_by` varchar(100) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_engine_exec_lookup` (`academic_year`,`engine_type`,`period_start`,`period_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_engine_executions`
--

LOCK TABLES `attendance_engine_executions` WRITE;
/*!40000 ALTER TABLE `attendance_engine_executions` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_engine_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_holiday`
--

DROP TABLE IF EXISTS `attendance_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_holiday` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `holiday_date` date NOT NULL,
  `holiday_name` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_holiday`
--

LOCK TABLES `attendance_holiday` WRITE;
/*!40000 ALTER TABLE `attendance_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_records`
--

DROP TABLE IF EXISTS `attendance_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `marked_at` datetime(6) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` enum('ABSENT','PRESENT') NOT NULL,
  `attendance_session_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_attendance_record` (`attendance_session_id`,`student_id`),
  KEY `FKb5ijilkgrgx66qn66iajdkyb9` (`student_id`),
  CONSTRAINT `FKb5ijilkgrgx66qn66iajdkyb9` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKbeajy0xxweanmk3g7aujtf5bj` FOREIGN KEY (`attendance_session_id`) REFERENCES `attendance_sessions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_records`
--

LOCK TABLES `attendance_records` WRITE;
/*!40000 ALTER TABLE `attendance_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_sessions`
--

DROP TABLE IF EXISTS `attendance_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_sessions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attendance_date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `period_number` int NOT NULL,
  `academic_year_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `section_id` bigint DEFAULT NULL,
  `teacher_id` bigint NOT NULL,
  `year_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_attendance_session` (`attendance_date`,`period_number`,`department_id`,`section_id`,`year_id`),
  KEY `FK80kb2jo2jw76bvgg2vi7u00do` (`academic_year_id`),
  KEY `FK7qk3qm8p22rfnlqqm5buc3wt7` (`department_id`),
  KEY `FKpcs7hgdua629c9s4x702j0sp2` (`section_id`),
  KEY `FKpnjo169km7kmsfh5t60do9vyh` (`teacher_id`),
  KEY `FKbqim9btko5s07w467rtv8ms56` (`year_id`),
  CONSTRAINT `FK7qk3qm8p22rfnlqqm5buc3wt7` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `FK80kb2jo2jw76bvgg2vi7u00do` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `FKbqim9btko5s07w467rtv8ms56` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  CONSTRAINT `FKpcs7hgdua629c9s4x702j0sp2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `FKpnjo169km7kmsfh5t60do9vyh` FOREIGN KEY (`teacher_id`) REFERENCES `faculty` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_sessions`
--

LOCK TABLES `attendance_sessions` WRITE;
/*!40000 ALTER TABLE `attendance_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_settings`
--

DROP TABLE IF EXISTS `attendance_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_settings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `daily_engine_enabled` bit(1) DEFAULT NULL,
  `daily_processing_time` time(6) DEFAULT NULL,
  `full_day_penalty` int DEFAULT NULL,
  `partial_day_penalty` int DEFAULT NULL,
  `perfect_week_reward` int DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `week_end_day` enum('FRIDAY','MONDAY','SATURDAY','SUNDAY','THURSDAY','TUESDAY','WEDNESDAY') DEFAULT NULL,
  `week_start_day` enum('FRIDAY','MONDAY','SATURDAY','SUNDAY','THURSDAY','TUESDAY','WEDNESDAY') DEFAULT NULL,
  `weekly_engine_enabled` bit(1) DEFAULT NULL,
  `weekly_processing_time` time(6) DEFAULT NULL,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  `daily_engine_status` varchar(20) DEFAULT NULL,
  `last_daily_run` datetime(6) DEFAULT NULL,
  `last_weekly_run` datetime(6) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `test_mode_enabled` bit(1) DEFAULT NULL,
  `test_time` time(6) DEFAULT NULL,
  `weekly_engine_status` varchar(20) DEFAULT NULL,
  `week_end_full_penalty` int DEFAULT NULL,
  `week_end_partial_penalty` int DEFAULT NULL,
  `week_start_full_penalty` int DEFAULT NULL,
  `week_start_partial_penalty` int DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `last_daily_run_status` varchar(20) DEFAULT NULL,
  `last_daily_run_type` varchar(20) DEFAULT NULL,
  `last_weekly_run_status` varchar(20) DEFAULT NULL,
  `last_weekly_run_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_settings`
--

LOCK TABLES `attendance_settings` WRITE;
/*!40000 ALTER TABLE `attendance_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(100) NOT NULL,
  `actor_name` varchar(255) DEFAULT NULL,
  `actor_role` varchar(255) DEFAULT NULL,
  `actor_user_id` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `description` text,
  `entity_id` bigint DEFAULT NULL,
  `entity_type` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `new_values` text,
  `old_values` text,
  PRIMARY KEY (`id`),
  KEY `idx_audit_actor_id` (`actor_user_id`),
  KEY `idx_audit_action` (`action`),
  KEY `idx_audit_module` (`module`),
  KEY `idx_audit_entity_type_id` (`entity_type`,`entity_id`),
  KEY `idx_audit_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badge_requests`
--

DROP TABLE IF EXISTS `badge_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badge_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `remarks` text,
  `requested_at` datetime(6) NOT NULL,
  `reviewed_at` datetime(6) DEFAULT NULL,
  `reviewed_by` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `badge_id` bigint NOT NULL,
  `department_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `student_id` bigint NOT NULL,
  `proof_link` text,
  PRIMARY KEY (`id`),
  KEY `FKt3g2npskagiy54ujcokkt8krq` (`badge_id`),
  KEY `FK7wb98rahkhgh7bgbvqh5ka2iw` (`department_id`),
  KEY `FK22d5eg8y06gdhwx2avkhkqm1r` (`section_id`),
  KEY `FK4s80g104ewi5930vmn00pxyqe` (`student_id`),
  CONSTRAINT `FK22d5eg8y06gdhwx2avkhkqm1r` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `FK4s80g104ewi5930vmn00pxyqe` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FK7wb98rahkhgh7bgbvqh5ka2iw` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `FKt3g2npskagiy54ujcokkt8krq` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badge_requests`
--

LOCK TABLES `badge_requests` WRITE;
/*!40000 ALTER TABLE `badge_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `badge_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badges`
--

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
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  `proof_required` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKcuebofvgkgi4g9fxde2kmpr1h` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badges`
--

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;
INSERT INTO `badges` VALUES (1,'Faculty','Maintain 95% attendance for a full calendar month.','','Attendance Warrior','Common','Foundation',50,_binary '\0',NULL,NULL,NULL,_binary '\0'),(2,'Faculty','Actively participate and answer questions in all class hours for a week.','','Participation Star','Common','Foundation',40,_binary '\0',NULL,NULL,NULL,_binary '\0'),(3,'Faculty','Arrive before the bell rings without any late entries for 2 consecutive weeks.','','Punctuality Pro','Common','Foundation',30,_binary '\0',NULL,NULL,NULL,_binary '\0'),(4,'Faculty + Evaluator','Complete daily coding challenges on C/Python for 15 consecutive days.','','Code Ninja','Uncommon','Achievement',200,_binary '\0',NULL,NULL,NULL,_binary '\0'),(5,'Faculty + Evaluator','Score a GPA of 8.5 or higher in the semester examinations.','','GPA Master','Uncommon','Achievement',300,_binary '\0',NULL,NULL,NULL,_binary '\0'),(6,'Faculty + Evaluator','Maintain all active daily streaks for 30 consecutive days.','','Consistency Champion','Uncommon','Achievement',150,_binary '\0',NULL,NULL,NULL,_binary '\0'),(7,'Faculty + Evaluator','Participate and submit a working project in an internal department hackathon.','','Hackathon Finisher','Uncommon','Achievement',250,_binary '\0',NULL,NULL,NULL,_binary '\0'),(8,'Program Management','Build and host a web application with complete frontend and backend services.','','Full Stack Warrior','Rare','Excellence',800,_binary '\0',NULL,NULL,NULL,_binary '\0'),(9,'Program Management','Clear the first-round technical mock interviews conducted by internal placement cell.','','Interview Slayer','Rare','Excellence',600,_binary '\0',NULL,NULL,NULL,_binary '\0'),(10,'Program Management','Secure and successfully complete a verified 4-week industry internship.','','Internship Achiever','Rare','Excellence',1000,_binary '\0',NULL,NULL,NULL,_binary '\0'),(11,'Program Management','Lead and organize a technical/non-technical program or seminar in the college.','','Event Commander','Rare','Excellence',500,_binary '\0',NULL,NULL,NULL,_binary '\0'),(12,'Governance Council','Serve as a team captain and lead the group to an Elite status (4500+ XP).','','Team Captain Badge','Very Rare','Elite',1500,_binary '\0',NULL,NULL,NULL,_binary '\0'),(13,'Governance Council','Conduct peer teaching and mentor at least 5 junior students to improve their grades.','','Mentor Hero','Very Rare','Elite',1200,_binary '\0',NULL,NULL,NULL,_binary '\0'),(14,'Governance Council','Submit a research paper draft accepted/reviewed by the department committee.','','Research Pioneer','Very Rare','Elite',2000,_binary '\0',NULL,NULL,NULL,_binary '\0'),(15,'Governance Council','Develop a working prototype in the CoE/D2P Lab validated by an industry mentor.','','Innovation Catalyst','Very Rare','Elite',1800,_binary '\0',NULL,NULL,NULL,_binary '\0'),(16,'Dean / Principal','Create a viable project proposal incubated or registered as a student startup.','','Startup Builder','Legendary','Legacy',3500,_binary '\0',NULL,NULL,NULL,_binary '\0'),(17,'Dean / Principal','Get placed in a tier-1 company with a package exceeding threshold limit.','','Placement Champion','Legendary','Legacy',3000,_binary '\0',NULL,NULL,NULL,_binary '\0'),(18,'Dean / Principal','Reach a lifetime cumulative score of 3500+ XP points.','','JJCET Legend','Legendary','Legacy',3500,_binary '\0',NULL,NULL,NULL,_binary '\0'),(19,'Dean / Principal','Act as institutional ambassador and secure industry linkage / MoUs for college.','','Alumni Pioneer','Legendary','Legacy',4000,_binary '\0',NULL,NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captain_reward_settings`
--

DROP TABLE IF EXISTS `captain_reward_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captain_reward_settings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') NOT NULL,
  `captain_xp` int DEFAULT NULL,
  `engine_enabled` bit(1) DEFAULT NULL,
  `execution_time` time(6) DEFAULT NULL,
  `last_execution_date` datetime(6) DEFAULT NULL,
  `vice_captain_xp` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKlc1wugw65da78hx2cajtqtx9w` (`academic_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captain_reward_settings`
--

LOCK TABLES `captain_reward_settings` WRITE;
/*!40000 ALTER TABLE `captain_reward_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `captain_reward_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_frequencies`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_frequencies`
--

LOCK TABLES `custom_frequencies` WRITE;
/*!40000 ALTER TABLE `custom_frequencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_frequencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dept_code` varchar(20) NOT NULL,
  `dept_name` varchar(180) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  `supports_sections` bit(1) DEFAULT NULL,
  `department_type` enum('MAIN','SUB') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dept_code` (`dept_code`),
  UNIQUE KEY `dept_name` (`dept_name`),
  UNIQUE KEY `UKj6cwks7xecs5jov19ro8ge3qk` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'IT','Information Technology','2026-09-05 07:43:26','2026-09-05 07:43:26','IT',NULL,'Information Technology',_binary '\0',NULL,NULL,NULL,_binary '','MAIN'),(2,'CSE','Computer Science and Engineering','2026-09-05 07:43:26','2026-09-05 07:43:26','CSE',NULL,'Computer Science and Engineering',_binary '\0',NULL,NULL,NULL,_binary '','MAIN'),(3,'EEE','Electrical and Electronics Engineering','2026-09-05 07:43:26','2026-09-05 07:43:26','EEE',NULL,'Electrical and Electronics Engineering',_binary '\0',NULL,NULL,NULL,_binary '','MAIN'),(4,'MECH','Mechanical Engineering','2026-09-05 07:43:26','2026-09-05 07:43:26','MECH',NULL,'Mechanical Engineering',_binary '\0',NULL,NULL,NULL,_binary '','MAIN'),(5,'CIVIL','Civil Engineering','2026-09-05 07:43:26','2026-09-05 07:43:26','CIVIL',NULL,'Civil Engineering',_binary '\0',NULL,NULL,NULL,_binary '','MAIN'),(6,'AERO','Aeronautical Engineering','2026-09-05 07:43:26','2026-09-05 07:43:26','AERO',NULL,'Aeronautical Engineering',_binary '\0',NULL,NULL,NULL,_binary '','MAIN'),(7,'ECE','Electronics and Communication Engineering','2026-09-05 07:43:26','2026-09-05 07:43:26','ECE',NULL,'Electronics and Communication Engineering',_binary '\0',NULL,NULL,NULL,_binary '','MAIN'),(8,'AIDS','Artificial Intelligence and Data Science','2026-09-05 07:43:26','2026-09-05 07:43:26','AIDS',NULL,'Artificial Intelligence and Data Science',_binary '\0',NULL,NULL,NULL,_binary '','MAIN'),(9,'CS','Computer Science and Engineering (Cyber Security)','2026-09-05 07:43:26','2026-09-05 07:43:26','CS',NULL,'Computer Science and Engineering (Cyber Security)',_binary '\0',NULL,NULL,NULL,_binary '','MAIN'),(10,'TAMIL','Department of Tamil','2026-09-05 07:43:26','2026-09-05 07:43:26','TAMIL',NULL,'Department of Tamil',_binary '\0',NULL,NULL,NULL,_binary '\0','SUB'),(11,'CHEM','Department of Chemistry','2026-09-05 07:43:26','2026-09-05 07:43:26','CHEM',NULL,'Department of Chemistry',_binary '\0',NULL,NULL,NULL,_binary '\0','SUB'),(12,'MATH','Department of Mathematics','2026-09-05 07:43:26','2026-09-05 07:43:26','MATH',NULL,'Department of Mathematics',_binary '\0',NULL,NULL,NULL,_binary '\0','SUB'),(13,'ENG','Department of English','2026-09-05 07:43:26','2026-09-05 07:43:26','ENG',NULL,'Department of English',_binary '\0',NULL,NULL,NULL,_binary '\0','SUB'),(14,'PHY','Department of Physics','2026-09-05 07:43:26','2026-09-05 07:43:26','PHY',NULL,'Department of Physics',_binary '\0',NULL,NULL,NULL,_binary '\0','SUB');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline_logs`
--

DROP TABLE IF EXISTS `discipline_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint DEFAULT NULL,
  `activity_id` bigint DEFAULT NULL,
  `recorded_by` bigint DEFAULT NULL,
  `points` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `remarks` text,
  `incident_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `recorded_by_id` bigint DEFAULT NULL,
  `subgroup_id` bigint DEFAULT NULL,
  `reg_no` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discipline_logs_ibfk_2` (`activity_id`),
  KEY `discipline_logs_ibfk_3` (`recorded_by`),
  KEY `idx_discipline_student_date` (`student_id`,`incident_date`),
  KEY `FKq1in7t2kuukg1xilj2i92bm2g` (`recorded_by_id`),
  KEY `FK8yqmdoonjp1pe3hdlueff75aq` (`subgroup_id`),
  KEY `FKa7a329hsf527p0l61x9pog303` (`reg_no`),
  CONSTRAINT `discipline_logs_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `discipline_logs_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `discipline_logs_ibfk_3` FOREIGN KEY (`recorded_by`) REFERENCES `faculty` (`id`),
  CONSTRAINT `FK8yqmdoonjp1pe3hdlueff75aq` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`),
  CONSTRAINT `FKa7a329hsf527p0l61x9pog303` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`),
  CONSTRAINT `FKq1in7t2kuukg1xilj2i92bm2g` FOREIGN KEY (`recorded_by_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline_logs`
--

LOCK TABLES `discipline_logs` WRITE;
/*!40000 ALTER TABLE `discipline_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `discipline_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment_settings`
--

DROP TABLE IF EXISTS `enrollment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_settings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `enrollment_enabled` bit(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_settings`
--

LOCK TABLES `enrollment_settings` WRITE;
/*!40000 ALTER TABLE `enrollment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `enrolled_at` datetime(6) DEFAULT NULL,
  `enrolled_student_id` bigint DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  `status` enum('ENROLLED','PENDING','REJECTED') NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `department_id` bigint NOT NULL,
  `section_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_enrollment_status` (`status`),
  KEY `idx_enrollment_email` (`email`),
  KEY `idx_enrollment_mobile` (`mobile`),
  KEY `idx_enrollment_dept_status` (`department_id`,`status`),
  KEY `fk_enrollment_section` (`section_id`),
  CONSTRAINT `fk_enrollment_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `FKrlf69gwdar1sp7kny198i70xr` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  `section_id` bigint DEFAULT NULL,
  `designation` varchar(100) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_faculty_user` (`user_id`),
  KEY `fk_section_id` (`section_id`),
  KEY `faculty_ibfk_2` (`dept_id`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gender_name` (`gender_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'Male','2026-09-05 12:31:59','2026-09-05 12:31:59'),(2,'Female','2026-09-05 12:31:59','2026-09-05 12:31:59'),(3,'Other','2026-09-05 12:31:59','2026-09-05 12:31:59');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_deletion_audit_log`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_deletion_audit_log`
--

LOCK TABLES `group_deletion_audit_log` WRITE;
/*!40000 ALTER TABLE `group_deletion_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_deletion_audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_members`
--

DROP TABLE IF EXISTS `group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_members` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_captain` bit(1) NOT NULL,
  `student_id` bigint NOT NULL,
  `group_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_group_student` (`group_id`,`student_id`),
  KEY `FKriqbhx06deaevh9o051g4fo95` (`student_id`),
  CONSTRAINT `FK3au16gnt2ywalakrslk2vhxj9` FOREIGN KEY (`group_id`) REFERENCES `students_group` (`id`),
  CONSTRAINT `FKriqbhx06deaevh9o051g4fo95` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members`
--

LOCK TABLES `group_members` WRITE;
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `captain_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKqcvyixaqvy6a1e3haycgy0nja` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
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
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKli0eoqvxan7eauih6cmj751i1` (`level_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'Onboarding missions, basic badges, attend all sessions',1,'Build participation habits',1,'Explorer',100,0,'FIRST_YEAR',_binary '\0',NULL,NULL,NULL),(2,'Study groups, quiz battles, attendance streaks',2,'Develop consistency & discipline',1,'Builder',500,101,'FIRST_YEAR',_binary '\0',NULL,NULL,NULL),(3,'Skill pathways unlocked, mini-projects, peer collaboration',3,'Build technical & collaborative skills',2,'Innovator',1500,501,'FIRST_YEAR',_binary '\0',NULL,NULL,NULL),(4,'Advanced missions, certification tracks, own deliverables',4,'Demonstrate competency & peer support',2,'Specialist',3000,1501,'FIRST_YEAR',_binary '\0',NULL,NULL,NULL),(5,'Mentorship roles, leadership missions, project lead',5,'Guide peers, lead teams strategically',3,'Leader',5000,3001,'FIRST_YEAR',_binary '\0',NULL,NULL,NULL),(6,'Governance participation, ecosystem stewardship',6,'Sustain ecosystem & peer development',3,'Mentor',7000,5001,'FIRST_YEAR',_binary '\0',NULL,NULL,NULL),(7,'Industry opportunities, innovation access, strategic leadership',7,'Influence ecosystem growth & innovation',3,'Architect',10000,7001,'FIRST_YEAR',_binary '\0',NULL,NULL,NULL),(8,'Full privileges, alumni bridge, institutional ambassador',8,'Professional-level readiness - placement & alumni',3,'Industry Ready',99999,10001,'FIRST_YEAR',_binary '\0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission_submissions`
--

DROP TABLE IF EXISTS `mission_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mission_submissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `evidence_url` varchar(500) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `submitted_at` datetime(6) DEFAULT NULL,
  `week_number` int DEFAULT NULL,
  `xp_awarded` int DEFAULT NULL,
  `mission_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdiekhr3skruynrind97ticy4k` (`mission_id`),
  KEY `FKdwdtk0amkvmdqxowtub3xymuo` (`student_id`),
  CONSTRAINT `FKdiekhr3skruynrind97ticy4k` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`id`),
  CONSTRAINT `FKdwdtk0amkvmdqxowtub3xymuo` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission_submissions`
--

LOCK TABLES `mission_submissions` WRITE;
/*!40000 ALTER TABLE `mission_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mission_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missions`
--

DROP TABLE IF EXISTS `missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `evidence_type` varchar(50) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `owner_role` varchar(50) DEFAULT NULL,
  `stage` int NOT NULL,
  `task_code` varchar(50) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `xp_cap` int DEFAULT NULL,
  `xp_reward` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKbx3v7rkjab75f45nwtrexl0jl` (`task_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missions`
--

LOCK TABLES `missions` WRITE;
/*!40000 ALTER TABLE `missions` DISABLE KEYS */;
/*!40000 ALTER TABLE `missions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `priority` enum('LOW','NORMAL','HIGH','URGENT') NOT NULL DEFAULT 'NORMAL',
  `reference_type` varchar(50) DEFAULT NULL,
  `reference_id` bigint DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `read_at` datetime DEFAULT NULL,
  `incident_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_no` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_notification_student_read` (`student_id`,`is_read`),
  KEY `idx_notification_date` (`student_id`,`incident_date`),
  KEY `FKoipcyap04c4x2f0vao2s5drpu` (`reg_no`),
  CONSTRAINT `FKoipcyap04c4x2f0vao2s5drpu` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_tokens`
--

DROP TABLE IF EXISTS `otp_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_tokens` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `expiry_date` datetime(6) NOT NULL,
  `otp` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_tokens`
--

LOCK TABLES `otp_tokens` WRITE;
/*!40000 ALTER TABLE `otp_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penalty_requests`
--

DROP TABLE IF EXISTS `penalty_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalty_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(100) DEFAULT NULL,
  `approved_at` datetime(6) DEFAULT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `cc_name` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `penalty_xp` int NOT NULL,
  `reason` text,
  `rejected_reason` text,
  `status` varchar(20) NOT NULL,
  `teacher_name` varchar(100) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `activity_id` bigint DEFAULT NULL,
  `cc_id` bigint DEFAULT NULL,
  `student_id` bigint NOT NULL,
  `teacher_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKps5lgvixbub7xr7vn9rijrrvy` (`activity_id`),
  KEY `FK4ghjl43a5xu4738820pa1op0j` (`cc_id`),
  KEY `FKs86j9i2prb9a66hubxfn5pt67` (`student_id`),
  KEY `FKqphr3ibe5nsn2dq1j9kamrfku` (`teacher_id`),
  CONSTRAINT `FK4ghjl43a5xu4738820pa1op0j` FOREIGN KEY (`cc_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKps5lgvixbub7xr7vn9rijrrvy` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `FKqphr3ibe5nsn2dq1j9kamrfku` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKs86j9i2prb9a66hubxfn5pt67` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalty_requests`
--

LOCK TABLES `penalty_requests` WRITE;
/*!40000 ALTER TABLE `penalty_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `penalty_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','2026-09-05 08:01:23','2026-09-05 08:01:23'),(2,'ROLE_TEACHER','2026-09-05 08:01:23','2026-09-05 08:01:23'),(3,'ROLE_STUDENT','2026-09-05 08:01:23','2026-09-05 08:01:23'),(4,'ROLE_HOD','2026-09-05 08:01:23','2026-09-05 08:01:23'),(5,'ROLE_SUPER_ADMIN','2026-09-05 09:42:43','2026-09-05 09:42:43');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dept_id` bigint NOT NULL,
  `section_name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `permanent_delete_at` datetime DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_department_section` (`dept_id`,`section_name`),
  CONSTRAINT `fk_section_department` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesters` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `semester_no` tinyint NOT NULL,
  `semester_name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `semester_no` (`semester_no`),
  UNIQUE KEY `uq_semester_name` (`semester_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES (1,1,'Semester I','2026-09-05 08:10:15','2026-09-05 08:10:15'),(2,2,'Semester II','2026-09-05 08:10:15','2026-09-05 08:10:15'),(3,3,'Semester III','2026-09-05 08:10:15','2026-09-05 08:10:15'),(4,4,'Semester IV','2026-09-05 08:10:15','2026-09-05 08:10:15'),(5,5,'Semester V','2026-09-05 08:10:15','2026-09-05 08:10:15'),(6,6,'Semester VI','2026-09-05 08:10:15','2026-09-05 08:10:15'),(7,7,'Semester VII','2026-09-05 08:10:15','2026-09-05 08:10:15'),(8,8,'Semester VIII','2026-09-05 08:10:15','2026-09-05 08:10:15');
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_notifications`
--

DROP TABLE IF EXISTS `sms_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_notifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `error_message` text,
  `guardian_phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `provider` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `student_id` bigint NOT NULL,
  `twilio_sid` varchar(100) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `period_no` int DEFAULT NULL,
  `message_request_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_notifications`
--

LOCK TABLES `sms_notifications` WRITE;
/*!40000 ALTER TABLE `sms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_activity_mappings`
--

DROP TABLE IF EXISTS `stage_activity_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stage_activity_mappings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity_id` bigint NOT NULL,
  `stage_id` bigint NOT NULL,
  `display_order` int NOT NULL,
  `subgroup_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKop038fc85aolfs45a0dv8uod6` (`activity_id`),
  KEY `FK2dg4wbp42gll5gnoqq39fh6v` (`stage_id`),
  CONSTRAINT `FK2dg4wbp42gll5gnoqq39fh6v` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FKop038fc85aolfs45a0dv8uod6` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_activity_mappings`
--

LOCK TABLES `stage_activity_mappings` WRITE;
/*!40000 ALTER TABLE `stage_activity_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage_activity_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_teams`
--

DROP TABLE IF EXISTS `stage_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stage_teams` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `captain_id` bigint DEFAULT NULL,
  `stage_id` bigint NOT NULL,
  `team_id` bigint NOT NULL,
  `vice_captain_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_stage_team` (`stage_id`,`team_id`),
  KEY `FKjn8oms5hngw5t7h4uq5q5vakp` (`captain_id`),
  KEY `FKhkmy7e8i9p3oj3ih17cf94ybk` (`team_id`),
  KEY `FKtoym937dpt8rd4k4088pal1ld` (`vice_captain_id`),
  CONSTRAINT `FK44hre9s69jf2plrw2bhmnhwgg` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FKhkmy7e8i9p3oj3ih17cf94ybk` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `FKjn8oms5hngw5t7h4uq5q5vakp` FOREIGN KEY (`captain_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKtoym937dpt8rd4k4088pal1ld` FOREIGN KEY (`vice_captain_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_teams`
--

LOCK TABLES `stage_teams` WRITE;
/*!40000 ALTER TABLE `stage_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streaks`
--

DROP TABLE IF EXISTS `streaks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streaks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `current_streak` int NOT NULL,
  `is_broken` bit(1) NOT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `penalty_per_break` int NOT NULL,
  `streak_type` varchar(50) NOT NULL,
  `student_id` bigint NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  `last_processed_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_streak_student_type` (`student_id`,`streak_type`),
  KEY `FKgs4huer1l3h459838yihayxqx` (`reg_no`),
  CONSTRAINT `FKehg7pdbwrdqkiq17jnqowqwg5` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streaks`
--

LOCK TABLES `streaks` WRITE;
/*!40000 ALTER TABLE `streaks` DISABLE KEYS */;
/*!40000 ALTER TABLE `streaks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_activity_streaks`
--

DROP TABLE IF EXISTS `student_activity_streaks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_activity_streaks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `current_streak` int NOT NULL,
  `last_completed_date` date DEFAULT NULL,
  `longest_streak` int NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `activity_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_student_activity_streak` (`student_id`,`activity_id`),
  KEY `FKs157a0pqlp91rv6rx1oha2t1k` (`activity_id`),
  CONSTRAINT `FKpjweg58rirwvsqi281ic3kul5` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKs157a0pqlp91rv6rx1oha2t1k` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_activity_streaks`
--

LOCK TABLES `student_activity_streaks` WRITE;
/*!40000 ALTER TABLE `student_activity_streaks` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_activity_streaks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_activity_xp`
--

DROP TABLE IF EXISTS `student_activity_xp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_activity_xp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `awarded_at` datetime(6) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `xp_awarded` int NOT NULL,
  `activity_id` bigint NOT NULL,
  `assignment_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  `teacher_id` bigint NOT NULL,
  `result` varchar(50) NOT NULL,
  `stage_order` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FKsjhq1ffk9cbkch5bnvom9aypr` (`activity_id`),
  KEY `FK1qs9jd73r6b8jx0m251k34o06` (`assignment_id`),
  KEY `FKdr6722wmy4cm78xx6vrpdtil7` (`student_id`),
  KEY `FKqpniaf47k9cc8bmqmi4jkokt3` (`teacher_id`),
  CONSTRAINT `FK1qs9jd73r6b8jx0m251k34o06` FOREIGN KEY (`assignment_id`) REFERENCES `activity_assignments` (`id`),
  CONSTRAINT `FKdr6722wmy4cm78xx6vrpdtil7` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKqpniaf47k9cc8bmqmi4jkokt3` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKsjhq1ffk9cbkch5bnvom9aypr` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_activity_xp`
--

LOCK TABLES `student_activity_xp` WRITE;
/*!40000 ALTER TABLE `student_activity_xp` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_activity_xp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_badges`
--

DROP TABLE IF EXISTS `student_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_badges` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `approved_by` varchar(100) DEFAULT NULL,
  `awarded_at` datetime(6) DEFAULT NULL,
  `evidence_url` text,
  `status` varchar(50) NOT NULL,
  `badge_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdogjuytddp97f0p6ivt3r8ufp` (`badge_id`),
  KEY `FKtciahqu1w23ccrula5smx9i73` (`student_id`),
  CONSTRAINT `FKdogjuytddp97f0p6ivt3r8ufp` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`),
  CONSTRAINT `FKtciahqu1w23ccrula5smx9i73` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_badges`
--

LOCK TABLES `student_badges` WRITE;
/*!40000 ALTER TABLE `student_badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_guardians`
--

DROP TABLE IF EXISTS `student_guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_guardians` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint NOT NULL,
  `guardian_name` varchar(150) NOT NULL,
  `relationship` enum('FATHER','MOTHER','GUARDIAN','PARENT') NOT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_no` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`,`relationship`),
  UNIQUE KEY `reg_no` (`reg_no`,`relationship`),
  KEY `idx_guardian_student` (`student_id`),
  CONSTRAINT `fk_guardian_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_guardians`
--

LOCK TABLES `student_guardians` WRITE;
/*!40000 ALTER TABLE `student_guardians` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_points_history`
--

DROP TABLE IF EXISTS `student_points_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_points_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint DEFAULT NULL,
  `activity_id` bigint DEFAULT NULL,
  `log_id` bigint DEFAULT NULL,
  `points` int NOT NULL,
  `new_score` int NOT NULL,
  `new_streak` int NOT NULL,
  `incident_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_no` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_points_history_ibfk_2` (`activity_id`),
  KEY `student_points_history_ibfk_3` (`log_id`),
  KEY `idx_points_student_date` (`student_id`,`incident_date`),
  KEY `FK66b91ft72q8nboionnev395f1` (`reg_no`),
  CONSTRAINT `FK66b91ft72q8nboionnev395f1` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`),
  CONSTRAINT `student_points_history_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `student_points_history_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `student_points_history_ibfk_3` FOREIGN KEY (`log_id`) REFERENCES `discipline_logs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_points_history`
--

LOCK TABLES `student_points_history` WRITE;
/*!40000 ALTER TABLE `student_points_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_points_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `reg_no` varchar(50) NOT NULL,
  `spr_no` varchar(50) DEFAULT NULL,
  `department_id` bigint NOT NULL,
  `section_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender_id` bigint NOT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `year_id` bigint NOT NULL,
  `semester_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `score` int NOT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `current_stage` int NOT NULL,
  `stage` int DEFAULT '1',
  `total_xp` int NOT NULL,
  `team_id` bigint DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `group_xp` int NOT NULL,
  `individual_xp` int NOT NULL,
  `must_xp` int NOT NULL,
  `is_captain` bit(1) NOT NULL,
  `promotion_order` int DEFAULT NULL,
  `promotion_timestamp` datetime(6) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  `academic_year_id` bigint DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKe2rndfrsx22acpq2ty1caeuyw` (`email`),
  UNIQUE KEY `reg_no` (`reg_no`),
  UNIQUE KEY `uk_reg_no` (`reg_no`),
  UNIQUE KEY `spr_no` (`spr_no`),
  KEY `fk_students_gender` (`gender_id`),
  KEY `idx_students_year` (`year_id`),
  KEY `idx_students_semester` (`semester_id`),
  KEY `fk_students_user` (`user_id`),
  KEY `students_ibfk_1` (`department_id`),
  KEY `fk_students_section` (`section_id`),
  KEY `FKjgyxg2x86o4me9gr70elinthr` (`team_id`),
  KEY `FKfob3k6rgxnlssnrcy55yuxfkl` (`group_id`),
  CONSTRAINT `fk_students_gender` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_students_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `fk_students_semester` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  CONSTRAINT `fk_students_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_students_year` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  CONSTRAINT `FKfob3k6rgxnlssnrcy55yuxfkl` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `FKjgyxg2x86o4me9gr70elinthr` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_group`
--

DROP TABLE IF EXISTS `students_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dept_id` bigint NOT NULL,
  `name` varchar(100) NOT NULL,
  `max_size` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_students_group` (`dept_id`,`name`),
  UNIQUE KEY `uq_students_team` (`dept_id`,`name`),
  CONSTRAINT `FKj47s3n0afrqp3i2jcxsukp2ha` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `chk_group_size` CHECK ((`max_size` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_group`
--

LOCK TABLES `students_group` WRITE;
/*!40000 ALTER TABLE `students_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_roles`
--

DROP TABLE IF EXISTS `sub_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sub_roles_ibfk_1` (`role_id`),
  CONSTRAINT `sub_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_roles`
--

LOCK TABLES `sub_roles` WRITE;
/*!40000 ALTER TABLE `sub_roles` DISABLE KEYS */;
INSERT INTO `sub_roles` VALUES (1,1,'HOD','2026-09-05 08:01:23','2026-09-05 08:01:23'),(2,2,'CC','2026-09-05 08:01:23','2026-09-05 08:01:23');
/*!40000 ALTER TABLE `sub_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dept_id` bigint DEFAULT NULL,
  `sub_code` varchar(20) NOT NULL,
  `sub_name` varchar(180) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKaodt3utnw0lsov4k9ta88dbpr` (`name`),
  UNIQUE KEY `uq_subject_code` (`dept_id`,`sub_code`),
  UNIQUE KEY `uq_subject_name` (`dept_id`,`sub_name`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_audit_log`
--

DROP TABLE IF EXISTS `system_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_audit_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `actor` varchar(255) NOT NULL,
  `description` text,
  `entity_id` bigint NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_audit_log`
--

LOCK TABLES `system_audit_log` WRITE;
/*!40000 ALTER TABLE `system_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_members` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint NOT NULL,
  `is_captain` tinyint(1) NOT NULL DEFAULT '0',
  `team_id` bigint NOT NULL,
  `role` enum('CAPTAIN','MEMBER','VICE_CAPTAIN') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_team_student` (`team_id`,`student_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `FKtgca08el3ofisywcf11f0f76t` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_removal_requests`
--

DROP TABLE IF EXISTS `team_removal_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_removal_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `reason` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL,
  `captain_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  `team_id` bigint NOT NULL,
  `reg_no` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6ci2e9rcg55cn6aju5o1e2fiu` (`captain_id`),
  KEY `FK3plqqp3ya6i524272qwjsdjhk` (`student_id`),
  KEY `FK8siu2o6r727x6co4ahugdf3wo` (`team_id`),
  KEY `FKgpv2t0mhgoinelie9tqoi38ic` (`reg_no`),
  CONSTRAINT `FK3plqqp3ya6i524272qwjsdjhk` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FK6ci2e9rcg55cn6aju5o1e2fiu` FOREIGN KEY (`captain_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FK8siu2o6r727x6co4ahugdf3wo` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `FKgpv2t0mhgoinelie9tqoi38ic` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_removal_requests`
--

LOCK TABLES `team_removal_requests` WRITE;
/*!40000 ALTER TABLE `team_removal_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_removal_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `captain_id` bigint DEFAULT NULL,
  `assignment_id` bigint DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `vice_captain_id` bigint DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_team_name_class` (`name`,`department_id`,`year`,`section_id`),
  KEY `FKc59hkkmfd3fb1w4dgewg3lfh1` (`captain_id`),
  KEY `FKi382pmjr988ro4g3t2c08h1hd` (`assignment_id`),
  KEY `FKcq9jk9qh4ox827y0d161rabce` (`created_by_id`),
  KEY `FKkteyamwleykiqb2nv0cu2fc3r` (`department_id`),
  KEY `FK938r0tivp59n0bmou7dhv6v56` (`section_id`),
  KEY `FKfx82rxx8m5xjjxhsy6tmhhbke` (`vice_captain_id`),
  CONSTRAINT `FK938r0tivp59n0bmou7dhv6v56` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `FKc59hkkmfd3fb1w4dgewg3lfh1` FOREIGN KEY (`captain_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKcq9jk9qh4ox827y0d161rabce` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKfx82rxx8m5xjjxhsy6tmhhbke` FOREIGN KEY (`vice_captain_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKi382pmjr988ro4g3t2c08h1hd` FOREIGN KEY (`assignment_id`) REFERENCES `activity_assignments` (`id`),
  CONSTRAINT `FKkteyamwleykiqb2nv0cu2fc3r` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `academic_year_id` bigint NOT NULL,
  `created_by_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `section_id` bigint NOT NULL,
  `semester_id` bigint NOT NULL,
  `year_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5edkxibmo2r3eeegkfvdp24o6` (`academic_year_id`),
  KEY `FKbf0x6ki3ym112b24shaf1ia97` (`created_by_id`),
  KEY `FKe7pho8bicl9ky0w6l3hepo4bc` (`department_id`),
  KEY `FKog52wc8yod6g56621vygalt2f` (`section_id`),
  KEY `FKlwqgafdl0hrmeg548uarkrbvi` (`semester_id`),
  KEY `FKb7eoap2ph5ywqf8tn5tw25w82` (`year_id`),
  CONSTRAINT `FK5edkxibmo2r3eeegkfvdp24o6` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `FKb7eoap2ph5ywqf8tn5tw25w82` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  CONSTRAINT `FKbf0x6ki3ym112b24shaf1ia97` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKe7pho8bicl9ky0w6l3hepo4bc` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `FKlwqgafdl0hrmeg548uarkrbvi` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  CONSTRAINT `FKog52wc8yod6g56621vygalt2f` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_entries`
--

DROP TABLE IF EXISTS `timetable_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable_entries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `day` varchar(30) NOT NULL,
  `end_time` varchar(15) NOT NULL,
  `period_number` int NOT NULL,
  `start_time` varchar(15) NOT NULL,
  `faculty_id` bigint NOT NULL,
  `subject_id` bigint NOT NULL,
  `timetable_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj61690mwftwguyahrgmv692ku` (`faculty_id`),
  KEY `FKi8jv4d492h85hygx2v35aytjh` (`subject_id`),
  KEY `FKfoi9lt7rgy5hb73bwva21u6ln` (`timetable_id`),
  CONSTRAINT `FKfoi9lt7rgy5hb73bwva21u6ln` FOREIGN KEY (`timetable_id`) REFERENCES `timetable` (`id`),
  CONSTRAINT `FKi8jv4d492h85hygx2v35aytjh` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `FKj61690mwftwguyahrgmv692ku` FOREIGN KEY (`faculty_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_entries`
--

LOCK TABLES `timetable_entries` WRITE;
/*!40000 ALTER TABLE `timetable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_ibfk_2` (`role_id`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,5);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
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
/*!40000 ALTER TABLE `user_sub_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `active` bit(1) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `year` varchar(50) DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `assigned_academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  `assigned_year_id` bigint DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `permanent_delete_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `FKsbg59w8q63i0oo53rlgvlcnjq` (`department_id`),
  KEY `fk_user_section` (`section_id`),
  KEY `FKfifb606yqbgb01a0o3eaml99i` (`assigned_year_id`),
  CONSTRAINT `fk_user_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `FKfifb606yqbgb01a0o3eaml99i` FOREIGN KEY (`assigned_year_id`) REFERENCES `years` (`id`),
  CONSTRAINT `FKsbg59w8q63i0oo53rlgvlcnjq` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'JJSuperadmin','ENC:HYu7rXQOTy22CUlrHYMtaXS2yySfRqxK5jqXv81S0Y4le9Y742m84JCOJlaP8UI=','ENC:DFxMWFW6H0QBMdaHbw2FtCh8ZpBFR1SPlr/eIw9sHz16oQAmYto=','2026-09-05 15:12:43','2026-09-05 09:42:43',_binary '','JJSuperadmin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_analytics_attendance_record_fact`
--

DROP TABLE IF EXISTS `v_analytics_attendance_record_fact`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_attendance_record_fact`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_attendance_record_fact` AS SELECT 
 1 AS `attendance_record_id`,
 1 AS `attendance_session_id`,
 1 AS `student_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `attendance_date`,
 1 AS `period_number`,
 1 AS `academic_year_id`,
 1 AS `academic_year`,
 1 AS `year_id`,
 1 AS `year_no`,
 1 AS `year_name`,
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_id`,
 1 AS `section_name`,
 1 AS `faculty_id`,
 1 AS `attendance_status`,
 1 AS `is_present`,
 1 AS `is_absent`,
 1 AS `marked_at`,
 1 AS `remarks`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_attendance_scope_daily`
--

DROP TABLE IF EXISTS `v_analytics_attendance_scope_daily`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_attendance_scope_daily`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_attendance_scope_daily` AS SELECT 
 1 AS `attendance_date`,
 1 AS `academic_year_id`,
 1 AS `year_id`,
 1 AS `department_id`,
 1 AS `section_id`,
 1 AS `academic_year`,
 1 AS `year_no`,
 1 AS `year_name`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_name`,
 1 AS `recorded_students`,
 1 AS `total_periods`,
 1 AS `present_periods`,
 1 AS `absent_periods`,
 1 AS `attendance_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_department_current_summary`
--

DROP TABLE IF EXISTS `v_analytics_department_current_summary`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_department_current_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_department_current_summary` AS SELECT 
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `student_count`,
 1 AS `average_total_xp`,
 1 AS `total_xp`,
 1 AS `average_attendance_rate`,
 1 AS `average_current_stage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_development_stage_raw`
--

DROP TABLE IF EXISTS `v_analytics_development_stage_raw`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_development_stage_raw`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_development_stage_raw` AS SELECT 
 1 AS `student_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_id`,
 1 AS `section_name`,
 1 AS `academic_year_id`,
 1 AS `academic_year`,
 1 AS `year_id`,
 1 AS `year_no`,
 1 AS `year_name`,
 1 AS `semester_id`,
 1 AS `semester_no`,
 1 AS `semester_name`,
 1 AS `current_stage`,
 1 AS `stage`,
 1 AS `total_xp`,
 1 AS `attendance_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_faculty_scope`
--

DROP TABLE IF EXISTS `v_analytics_faculty_scope`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_faculty_scope`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_faculty_scope` AS SELECT 
 1 AS `faculty_id`,
 1 AS `user_id`,
 1 AS `username`,
 1 AS `email`,
 1 AS `faculty_name`,
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_id`,
 1 AS `section_name`,
 1 AS `designation`,
 1 AS `faculty_deleted`,
 1 AS `user_active`,
 1 AS `user_deleted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_performance_raw`
--

DROP TABLE IF EXISTS `v_analytics_performance_raw`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_performance_raw`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_performance_raw` AS SELECT 
 1 AS `student_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_id`,
 1 AS `section_name`,
 1 AS `academic_year_id`,
 1 AS `academic_year`,
 1 AS `year_id`,
 1 AS `year_no`,
 1 AS `year_name`,
 1 AS `semester_id`,
 1 AS `semester_no`,
 1 AS `semester_name`,
 1 AS `current_stage`,
 1 AS `total_xp`,
 1 AS `attendance_rate`,
 1 AS `total_recorded_periods`,
 1 AS `present_periods`,
 1 AS `absent_periods`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_stage_distribution_institution`
--

DROP TABLE IF EXISTS `v_analytics_stage_distribution_institution`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_stage_distribution_institution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_stage_distribution_institution` AS SELECT 
 1 AS `current_stage`,
 1 AS `student_count`,
 1 AS `percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_activity_streak`
--

DROP TABLE IF EXISTS `v_analytics_student_activity_streak`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_activity_streak`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_activity_streak` AS SELECT 
 1 AS `student_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_id`,
 1 AS `section_name`,
 1 AS `activity_id`,
 1 AS `activity_name`,
 1 AS `current_streak`,
 1 AS `longest_streak`,
 1 AS `last_completed_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_activity_summary`
--

DROP TABLE IF EXISTS `v_analytics_student_activity_summary`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_activity_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_activity_summary` AS SELECT 
 1 AS `student_id`,
 1 AS `activity_id`,
 1 AS `academic_year_id`,
 1 AS `year_id`,
 1 AS `semester_id`,
 1 AS `department_id`,
 1 AS `section_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_name`,
 1 AS `academic_year`,
 1 AS `year_no`,
 1 AS `year_name`,
 1 AS `semester_no`,
 1 AS `semester_name`,
 1 AS `activity_name`,
 1 AS `activity_result_count`,
 1 AS `completed_activity_count`,
 1 AS `activity_xp_awarded`,
 1 AS `first_activity_awarded_at`,
 1 AS `last_activity_awarded_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_attendance_current`
--

DROP TABLE IF EXISTS `v_analytics_student_attendance_current`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_attendance_current`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_attendance_current` AS SELECT 
 1 AS `student_id`,
 1 AS `total_recorded_periods`,
 1 AS `present_periods`,
 1 AS `absent_periods`,
 1 AS `attendance_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_attendance_daily`
--

DROP TABLE IF EXISTS `v_analytics_student_attendance_daily`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_attendance_daily`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_attendance_daily` AS SELECT 
 1 AS `student_id`,
 1 AS `attendance_date`,
 1 AS `academic_year_id`,
 1 AS `year_id`,
 1 AS `department_id`,
 1 AS `section_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `academic_year`,
 1 AS `year_no`,
 1 AS `year_name`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_name`,
 1 AS `total_periods`,
 1 AS `present_periods`,
 1 AS `absent_periods`,
 1 AS `attendance_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_current`
--

DROP TABLE IF EXISTS `v_analytics_student_current`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_current`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_current` AS SELECT 
 1 AS `student_id`,
 1 AS `user_id`,
 1 AS `reg_no`,
 1 AS `spr_no`,
 1 AS `student_name`,
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_id`,
 1 AS `section_name`,
 1 AS `academic_year_id`,
 1 AS `academic_year`,
 1 AS `year_id`,
 1 AS `year_no`,
 1 AS `year_name`,
 1 AS `semester_id`,
 1 AS `semester_no`,
 1 AS `semester_name`,
 1 AS `current_stage`,
 1 AS `stage`,
 1 AS `total_xp`,
 1 AS `snapshot_total_xp`,
 1 AS `individual_xp`,
 1 AS `group_xp`,
 1 AS `must_xp`,
 1 AS `total_recorded_periods`,
 1 AS `present_periods`,
 1 AS `absent_periods`,
 1 AS `attendance_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_development_current`
--

DROP TABLE IF EXISTS `v_analytics_student_development_current`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_development_current`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_development_current` AS SELECT 
 1 AS `student_id`,
 1 AS `user_id`,
 1 AS `reg_no`,
 1 AS `spr_no`,
 1 AS `student_name`,
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_id`,
 1 AS `section_name`,
 1 AS `academic_year_id`,
 1 AS `academic_year`,
 1 AS `year_id`,
 1 AS `year_no`,
 1 AS `year_name`,
 1 AS `semester_id`,
 1 AS `semester_no`,
 1 AS `semester_name`,
 1 AS `current_stage`,
 1 AS `stage`,
 1 AS `total_xp`,
 1 AS `snapshot_total_xp`,
 1 AS `individual_xp`,
 1 AS `group_xp`,
 1 AS `must_xp`,
 1 AS `total_recorded_periods`,
 1 AS `present_periods`,
 1 AS `absent_periods`,
 1 AS `attendance_rate`,
 1 AS `current_level_id`,
 1 AS `current_level_number`,
 1 AS `current_level_title`,
 1 AS `current_level_stage`,
 1 AS `current_level_xp_min`,
 1 AS `current_level_xp_max`,
 1 AS `next_level_id`,
 1 AS `next_level_number`,
 1 AS `next_level_title`,
 1 AS `next_level_stage`,
 1 AS `next_level_xp_min`,
 1 AS `next_level_xp_max`,
 1 AS `xp_remaining_to_next_level`,
 1 AS `current_level_progress_percent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_scope`
--

DROP TABLE IF EXISTS `v_analytics_student_scope`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_scope`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_scope` AS SELECT 
 1 AS `student_id`,
 1 AS `user_id`,
 1 AS `reg_no`,
 1 AS `spr_no`,
 1 AS `student_name`,
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_id`,
 1 AS `section_name`,
 1 AS `academic_year_id`,
 1 AS `academic_year`,
 1 AS `academic_year_start_date`,
 1 AS `academic_year_end_date`,
 1 AS `year_id`,
 1 AS `year_no`,
 1 AS `year_name`,
 1 AS `semester_id`,
 1 AS `semester_no`,
 1 AS `semester_name`,
 1 AS `current_stage`,
 1 AS `stage`,
 1 AS `snapshot_total_xp`,
 1 AS `individual_xp`,
 1 AS `group_xp`,
 1 AS `must_xp`,
 1 AS `is_captain`,
 1 AS `active`,
 1 AS `deleted`,
 1 AS `promotion_order`,
 1 AS `promotion_timestamp`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_streak_by_type`
--

DROP TABLE IF EXISTS `v_analytics_student_streak_by_type`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_streak_by_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_streak_by_type` AS SELECT 
 1 AS `student_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `department_id`,
 1 AS `dept_code`,
 1 AS `dept_name`,
 1 AS `section_id`,
 1 AS `section_name`,
 1 AS `streak_type`,
 1 AS `current_streak`,
 1 AS `is_broken`,
 1 AS `last_processed_date`,
 1 AS `last_updated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_xp_current`
--

DROP TABLE IF EXISTS `v_analytics_student_xp_current`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_xp_current`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_xp_current` AS SELECT 
 1 AS `student_id`,
 1 AS `snapshot_total_xp`,
 1 AS `individual_xp`,
 1 AS `group_xp`,
 1 AS `must_xp`,
 1 AS `calculated_total_net_xp`,
 1 AS `calculated_earned_xp`,
 1 AS `calculated_penalty_xp`,
 1 AS `approved_transaction_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_xp_daily`
--

DROP TABLE IF EXISTS `v_analytics_student_xp_daily`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_xp_daily`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_xp_daily` AS SELECT 
 1 AS `transaction_date`,
 1 AS `student_id`,
 1 AS `current_academic_year_id`,
 1 AS `current_department_id`,
 1 AS `current_section_id`,
 1 AS `current_year_id`,
 1 AS `current_semester_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `current_academic_year`,
 1 AS `current_dept_code`,
 1 AS `current_dept_name`,
 1 AS `current_section_name`,
 1 AS `current_year_no`,
 1 AS `current_year_name`,
 1 AS `current_semester_no`,
 1 AS `current_semester_name`,
 1 AS `earned_xp`,
 1 AS `penalty_xp`,
 1 AS `net_xp`,
 1 AS `transaction_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_student_xp_monthly`
--

DROP TABLE IF EXISTS `v_analytics_student_xp_monthly`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_student_xp_monthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_student_xp_monthly` AS SELECT 
 1 AS `period_month`,
 1 AS `calendar_year`,
 1 AS `calendar_month`,
 1 AS `student_id`,
 1 AS `current_academic_year_id`,
 1 AS `current_department_id`,
 1 AS `current_section_id`,
 1 AS `current_year_id`,
 1 AS `current_semester_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `current_academic_year`,
 1 AS `current_dept_code`,
 1 AS `current_dept_name`,
 1 AS `current_section_name`,
 1 AS `current_year_no`,
 1 AS `current_year_name`,
 1 AS `current_semester_no`,
 1 AS `current_semester_name`,
 1 AS `earned_xp`,
 1 AS `penalty_xp`,
 1 AS `net_xp`,
 1 AS `transaction_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_xp_scope_monthly`
--

DROP TABLE IF EXISTS `v_analytics_xp_scope_monthly`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_xp_scope_monthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_xp_scope_monthly` AS SELECT 
 1 AS `period_month`,
 1 AS `calendar_year`,
 1 AS `calendar_month`,
 1 AS `current_academic_year_id`,
 1 AS `current_department_id`,
 1 AS `current_section_id`,
 1 AS `current_year_id`,
 1 AS `current_semester_id`,
 1 AS `current_academic_year`,
 1 AS `current_dept_code`,
 1 AS `current_dept_name`,
 1 AS `current_section_name`,
 1 AS `current_year_no`,
 1 AS `current_year_name`,
 1 AS `current_semester_no`,
 1 AS `current_semester_name`,
 1 AS `active_students`,
 1 AS `transaction_count`,
 1 AS `earned_xp`,
 1 AS `penalty_xp`,
 1 AS `net_xp`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_analytics_xp_transaction_fact`
--

DROP TABLE IF EXISTS `v_analytics_xp_transaction_fact`;
/*!50001 DROP VIEW IF EXISTS `v_analytics_xp_transaction_fact`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_analytics_xp_transaction_fact` AS SELECT 
 1 AS `xp_transaction_id`,
 1 AS `student_id`,
 1 AS `reg_no`,
 1 AS `student_name`,
 1 AS `activity_id`,
 1 AS `activity_name`,
 1 AS `category`,
 1 AS `status`,
 1 AS `is_penalty`,
 1 AS `cap_applied`,
 1 AS `stage_order`,
 1 AS `submitted_at`,
 1 AS `transaction_date`,
 1 AS `current_academic_year_id`,
 1 AS `current_academic_year`,
 1 AS `current_department_id`,
 1 AS `current_dept_code`,
 1 AS `current_dept_name`,
 1 AS `current_section_id`,
 1 AS `current_section_name`,
 1 AS `current_year_id`,
 1 AS `current_year_no`,
 1 AS `current_year_name`,
 1 AS `current_semester_id`,
 1 AS `current_semester_no`,
 1 AS `current_semester_name`,
 1 AS `net_xp`,
 1 AS `earned_xp`,
 1 AS `penalty_xp`,
 1 AS `approved_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `xp_transactions`
--

DROP TABLE IF EXISTS `xp_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xp_transactions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(255) NOT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `cap_applied` bit(1) NOT NULL,
  `category` varchar(50) NOT NULL,
  `evidence_url` varchar(500) DEFAULT NULL,
  `is_penalty` bit(1) NOT NULL,
  `status` varchar(20) NOT NULL,
  `submitted_at` datetime(6) NOT NULL,
  `xp_points` int NOT NULL,
  `student_id` bigint NOT NULL,
  `activity_id` bigint DEFAULT NULL,
  `stage_order` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK1qh1hd5r941kikty3go7isxj9` (`student_id`),
  KEY `FKgs7fmfhhyews0ls3yurpvbsgh` (`activity_id`),
  CONSTRAINT `FK1qh1hd5r941kikty3go7isxj9` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKgs7fmfhhyews0ls3yurpvbsgh` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xp_transactions`
--

LOCK TABLES `xp_transactions` WRITE;
/*!40000 ALTER TABLE `xp_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `xp_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `years`
--

DROP TABLE IF EXISTS `years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `years` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `year_no` tinyint NOT NULL,
  `year_name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `year_no` (`year_no`),
  UNIQUE KEY `uq_year_name` (`year_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `years`
--

LOCK TABLES `years` WRITE;
/*!40000 ALTER TABLE `years` DISABLE KEYS */;
INSERT INTO `years` VALUES (1,1,'First Year','2026-09-05 07:54:05','2026-09-05 07:54:05'),(2,2,'Second Year','2026-09-05 07:54:05','2026-09-05 07:54:05'),(3,3,'Third Year','2026-09-05 07:54:05','2026-09-05 07:54:05'),(4,4,'Fourth Year','2026-09-05 07:54:05','2026-09-05 07:54:05');
/*!40000 ALTER TABLE `years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `v_analytics_attendance_record_fact`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_attendance_record_fact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_attendance_record_fact` AS select `ar`.`id` AS `attendance_record_id`,`ats`.`id` AS `attendance_session_id`,`ar`.`student_id` AS `student_id`,`s`.`reg_no` AS `reg_no`,`s`.`full_name` AS `student_name`,`ats`.`attendance_date` AS `attendance_date`,`ats`.`period_number` AS `period_number`,`ats`.`academic_year_id` AS `academic_year_id`,`ay`.`academic_year` AS `academic_year`,`ats`.`year_id` AS `year_id`,`y`.`year_no` AS `year_no`,`y`.`year_name` AS `year_name`,`ats`.`department_id` AS `department_id`,`d`.`dept_code` AS `dept_code`,`d`.`dept_name` AS `dept_name`,`ats`.`section_id` AS `section_id`,`sec`.`section_name` AS `section_name`,`ats`.`teacher_id` AS `faculty_id`,`ar`.`status` AS `attendance_status`,(case when (`ar`.`status` = 'PRESENT') then 1 else 0 end) AS `is_present`,(case when (`ar`.`status` = 'ABSENT') then 1 else 0 end) AS `is_absent`,`ar`.`marked_at` AS `marked_at`,`ar`.`remarks` AS `remarks` from ((((((`attendance_records` `ar` join `attendance_sessions` `ats` on((`ats`.`id` = `ar`.`attendance_session_id`))) join `students` `s` on((`s`.`id` = `ar`.`student_id`))) left join `academic_years` `ay` on((`ay`.`id` = `ats`.`academic_year_id`))) left join `years` `y` on((`y`.`id` = `ats`.`year_id`))) left join `departments` `d` on((`d`.`id` = `ats`.`department_id`))) left join `section` `sec` on((`sec`.`id` = `ats`.`section_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_attendance_scope_daily`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_attendance_scope_daily`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_attendance_scope_daily` AS select `v_analytics_attendance_record_fact`.`attendance_date` AS `attendance_date`,`v_analytics_attendance_record_fact`.`academic_year_id` AS `academic_year_id`,`v_analytics_attendance_record_fact`.`year_id` AS `year_id`,`v_analytics_attendance_record_fact`.`department_id` AS `department_id`,`v_analytics_attendance_record_fact`.`section_id` AS `section_id`,min(`v_analytics_attendance_record_fact`.`academic_year`) AS `academic_year`,min(`v_analytics_attendance_record_fact`.`year_no`) AS `year_no`,min(`v_analytics_attendance_record_fact`.`year_name`) AS `year_name`,min(`v_analytics_attendance_record_fact`.`dept_code`) AS `dept_code`,min(`v_analytics_attendance_record_fact`.`dept_name`) AS `dept_name`,min(`v_analytics_attendance_record_fact`.`section_name`) AS `section_name`,count(distinct `v_analytics_attendance_record_fact`.`student_id`) AS `recorded_students`,count(0) AS `total_periods`,sum(`v_analytics_attendance_record_fact`.`is_present`) AS `present_periods`,sum(`v_analytics_attendance_record_fact`.`is_absent`) AS `absent_periods`,round(((100.0 * sum(`v_analytics_attendance_record_fact`.`is_present`)) / nullif(count(0),0)),2) AS `attendance_rate` from `v_analytics_attendance_record_fact` group by `v_analytics_attendance_record_fact`.`attendance_date`,`v_analytics_attendance_record_fact`.`academic_year_id`,`v_analytics_attendance_record_fact`.`year_id`,`v_analytics_attendance_record_fact`.`department_id`,`v_analytics_attendance_record_fact`.`section_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_department_current_summary`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_department_current_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_department_current_summary` AS select `v_analytics_student_current`.`department_id` AS `department_id`,`v_analytics_student_current`.`dept_code` AS `dept_code`,`v_analytics_student_current`.`dept_name` AS `dept_name`,count(0) AS `student_count`,round(avg(`v_analytics_student_current`.`total_xp`),2) AS `average_total_xp`,coalesce(sum(`v_analytics_student_current`.`total_xp`),0) AS `total_xp`,round(avg(`v_analytics_student_current`.`attendance_rate`),2) AS `average_attendance_rate`,round(avg(`v_analytics_student_current`.`current_stage`),2) AS `average_current_stage` from `v_analytics_student_current` group by `v_analytics_student_current`.`department_id`,`v_analytics_student_current`.`dept_code`,`v_analytics_student_current`.`dept_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_development_stage_raw`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_development_stage_raw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_development_stage_raw` AS select `v_analytics_student_current`.`student_id` AS `student_id`,`v_analytics_student_current`.`reg_no` AS `reg_no`,`v_analytics_student_current`.`student_name` AS `student_name`,`v_analytics_student_current`.`department_id` AS `department_id`,`v_analytics_student_current`.`dept_code` AS `dept_code`,`v_analytics_student_current`.`dept_name` AS `dept_name`,`v_analytics_student_current`.`section_id` AS `section_id`,`v_analytics_student_current`.`section_name` AS `section_name`,`v_analytics_student_current`.`academic_year_id` AS `academic_year_id`,`v_analytics_student_current`.`academic_year` AS `academic_year`,`v_analytics_student_current`.`year_id` AS `year_id`,`v_analytics_student_current`.`year_no` AS `year_no`,`v_analytics_student_current`.`year_name` AS `year_name`,`v_analytics_student_current`.`semester_id` AS `semester_id`,`v_analytics_student_current`.`semester_no` AS `semester_no`,`v_analytics_student_current`.`semester_name` AS `semester_name`,`v_analytics_student_current`.`current_stage` AS `current_stage`,`v_analytics_student_current`.`stage` AS `stage`,`v_analytics_student_current`.`total_xp` AS `total_xp`,`v_analytics_student_current`.`attendance_rate` AS `attendance_rate` from `v_analytics_student_current` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_faculty_scope`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_faculty_scope`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_faculty_scope` AS select `f`.`id` AS `faculty_id`,`f`.`user_id` AS `user_id`,`u`.`username` AS `username`,`u`.`email` AS `email`,`u`.`full_name` AS `faculty_name`,`f`.`dept_id` AS `department_id`,`d`.`dept_code` AS `dept_code`,`d`.`dept_name` AS `dept_name`,`f`.`section_id` AS `section_id`,`sec`.`section_name` AS `section_name`,`f`.`designation` AS `designation`,`f`.`deleted` AS `faculty_deleted`,`u`.`active` AS `user_active`,`u`.`deleted` AS `user_deleted` from (((`faculty` `f` join `users` `u` on((`u`.`id` = `f`.`user_id`))) join `departments` `d` on((`d`.`id` = `f`.`dept_id`))) left join `section` `sec` on((`sec`.`id` = `f`.`section_id`))) where ((`f`.`deleted` = 0) and (`u`.`active` = 1) and (`u`.`deleted` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_performance_raw`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_performance_raw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_performance_raw` AS select `v_analytics_student_current`.`student_id` AS `student_id`,`v_analytics_student_current`.`reg_no` AS `reg_no`,`v_analytics_student_current`.`student_name` AS `student_name`,`v_analytics_student_current`.`department_id` AS `department_id`,`v_analytics_student_current`.`dept_code` AS `dept_code`,`v_analytics_student_current`.`dept_name` AS `dept_name`,`v_analytics_student_current`.`section_id` AS `section_id`,`v_analytics_student_current`.`section_name` AS `section_name`,`v_analytics_student_current`.`academic_year_id` AS `academic_year_id`,`v_analytics_student_current`.`academic_year` AS `academic_year`,`v_analytics_student_current`.`year_id` AS `year_id`,`v_analytics_student_current`.`year_no` AS `year_no`,`v_analytics_student_current`.`year_name` AS `year_name`,`v_analytics_student_current`.`semester_id` AS `semester_id`,`v_analytics_student_current`.`semester_no` AS `semester_no`,`v_analytics_student_current`.`semester_name` AS `semester_name`,`v_analytics_student_current`.`current_stage` AS `current_stage`,`v_analytics_student_current`.`snapshot_total_xp` AS `total_xp`,`v_analytics_student_current`.`attendance_rate` AS `attendance_rate`,`v_analytics_student_current`.`total_recorded_periods` AS `total_recorded_periods`,`v_analytics_student_current`.`present_periods` AS `present_periods`,`v_analytics_student_current`.`absent_periods` AS `absent_periods` from `v_analytics_student_current` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_stage_distribution_institution`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_stage_distribution_institution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_stage_distribution_institution` AS select `v_analytics_development_stage_raw`.`current_stage` AS `current_stage`,count(0) AS `student_count`,round(((100.0 * count(0)) / nullif((select count(0) from `v_analytics_student_scope`),0)),2) AS `percentage` from `v_analytics_development_stage_raw` group by `v_analytics_development_stage_raw`.`current_stage` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_activity_streak`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_activity_streak`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_activity_streak` AS select `sas`.`student_id` AS `student_id`,`ss`.`reg_no` AS `reg_no`,`ss`.`student_name` AS `student_name`,`ss`.`department_id` AS `department_id`,`ss`.`dept_code` AS `dept_code`,`ss`.`dept_name` AS `dept_name`,`ss`.`section_id` AS `section_id`,`ss`.`section_name` AS `section_name`,`sas`.`activity_id` AS `activity_id`,`a`.`activity_name` AS `activity_name`,`sas`.`current_streak` AS `current_streak`,`sas`.`longest_streak` AS `longest_streak`,`sas`.`last_completed_date` AS `last_completed_date` from ((`student_activity_streaks` `sas` join `v_analytics_student_scope` `ss` on((`ss`.`student_id` = `sas`.`student_id`))) join `activities` `a` on((`a`.`id` = `sas`.`activity_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_activity_summary`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_activity_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_activity_summary` AS select `sax`.`student_id` AS `student_id`,`sax`.`activity_id` AS `activity_id`,`ss`.`academic_year_id` AS `academic_year_id`,`ss`.`year_id` AS `year_id`,`ss`.`semester_id` AS `semester_id`,`ss`.`department_id` AS `department_id`,`ss`.`section_id` AS `section_id`,min(`ss`.`reg_no`) AS `reg_no`,min(`ss`.`student_name`) AS `student_name`,min(`ss`.`dept_code`) AS `dept_code`,min(`ss`.`dept_name`) AS `dept_name`,min(`ss`.`section_name`) AS `section_name`,min(`ss`.`academic_year`) AS `academic_year`,min(`ss`.`year_no`) AS `year_no`,min(`ss`.`year_name`) AS `year_name`,min(`ss`.`semester_no`) AS `semester_no`,min(`ss`.`semester_name`) AS `semester_name`,min(`a`.`activity_name`) AS `activity_name`,count(0) AS `activity_result_count`,sum((case when (upper(`sax`.`result`) in ('PASS','PASSED','APPROVED','COMPLETED')) then 1 else 0 end)) AS `completed_activity_count`,coalesce(sum(`sax`.`xp_awarded`),0) AS `activity_xp_awarded`,min(`sax`.`awarded_at`) AS `first_activity_awarded_at`,max(`sax`.`awarded_at`) AS `last_activity_awarded_at` from ((`student_activity_xp` `sax` join `v_analytics_student_scope` `ss` on((`ss`.`student_id` = `sax`.`student_id`))) join `activities` `a` on((`a`.`id` = `sax`.`activity_id`))) group by `sax`.`student_id`,`sax`.`activity_id`,`ss`.`academic_year_id`,`ss`.`year_id`,`ss`.`semester_id`,`ss`.`department_id`,`ss`.`section_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_attendance_current`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_attendance_current`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_attendance_current` AS select `ss`.`student_id` AS `student_id`,count(`adf`.`attendance_record_id`) AS `total_recorded_periods`,coalesce(sum(`adf`.`is_present`),0) AS `present_periods`,coalesce(sum(`adf`.`is_absent`),0) AS `absent_periods`,coalesce(round(((100.0 * sum(`adf`.`is_present`)) / nullif(count(`adf`.`attendance_record_id`),0)),2),0) AS `attendance_rate` from (`v_analytics_student_scope` `ss` left join `v_analytics_attendance_record_fact` `adf` on((`adf`.`student_id` = `ss`.`student_id`))) group by `ss`.`student_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_attendance_daily`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_attendance_daily`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_attendance_daily` AS select `v_analytics_attendance_record_fact`.`student_id` AS `student_id`,`v_analytics_attendance_record_fact`.`attendance_date` AS `attendance_date`,`v_analytics_attendance_record_fact`.`academic_year_id` AS `academic_year_id`,`v_analytics_attendance_record_fact`.`year_id` AS `year_id`,`v_analytics_attendance_record_fact`.`department_id` AS `department_id`,`v_analytics_attendance_record_fact`.`section_id` AS `section_id`,min(`v_analytics_attendance_record_fact`.`reg_no`) AS `reg_no`,min(`v_analytics_attendance_record_fact`.`student_name`) AS `student_name`,min(`v_analytics_attendance_record_fact`.`academic_year`) AS `academic_year`,min(`v_analytics_attendance_record_fact`.`year_no`) AS `year_no`,min(`v_analytics_attendance_record_fact`.`year_name`) AS `year_name`,min(`v_analytics_attendance_record_fact`.`dept_code`) AS `dept_code`,min(`v_analytics_attendance_record_fact`.`dept_name`) AS `dept_name`,min(`v_analytics_attendance_record_fact`.`section_name`) AS `section_name`,count(0) AS `total_periods`,sum(`v_analytics_attendance_record_fact`.`is_present`) AS `present_periods`,sum(`v_analytics_attendance_record_fact`.`is_absent`) AS `absent_periods`,round(((100.0 * sum(`v_analytics_attendance_record_fact`.`is_present`)) / nullif(count(0),0)),2) AS `attendance_rate` from `v_analytics_attendance_record_fact` group by `v_analytics_attendance_record_fact`.`student_id`,`v_analytics_attendance_record_fact`.`attendance_date`,`v_analytics_attendance_record_fact`.`academic_year_id`,`v_analytics_attendance_record_fact`.`year_id`,`v_analytics_attendance_record_fact`.`department_id`,`v_analytics_attendance_record_fact`.`section_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_current`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_current`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_current` AS select `ss`.`student_id` AS `student_id`,`ss`.`user_id` AS `user_id`,`ss`.`reg_no` AS `reg_no`,`ss`.`spr_no` AS `spr_no`,`ss`.`student_name` AS `student_name`,`ss`.`department_id` AS `department_id`,`ss`.`dept_code` AS `dept_code`,`ss`.`dept_name` AS `dept_name`,`ss`.`section_id` AS `section_id`,`ss`.`section_name` AS `section_name`,`ss`.`academic_year_id` AS `academic_year_id`,`ss`.`academic_year` AS `academic_year`,`ss`.`year_id` AS `year_id`,`ss`.`year_no` AS `year_no`,`ss`.`year_name` AS `year_name`,`ss`.`semester_id` AS `semester_id`,`ss`.`semester_no` AS `semester_no`,`ss`.`semester_name` AS `semester_name`,`ss`.`current_stage` AS `current_stage`,`ss`.`stage` AS `stage`,`ss`.`snapshot_total_xp` AS `total_xp`,`ss`.`snapshot_total_xp` AS `snapshot_total_xp`,`ss`.`individual_xp` AS `individual_xp`,`ss`.`group_xp` AS `group_xp`,`ss`.`must_xp` AS `must_xp`,`att`.`total_recorded_periods` AS `total_recorded_periods`,`att`.`present_periods` AS `present_periods`,`att`.`absent_periods` AS `absent_periods`,`att`.`attendance_rate` AS `attendance_rate` from (`v_analytics_student_scope` `ss` left join `v_analytics_student_attendance_current` `att` on((`att`.`student_id` = `ss`.`student_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_development_current`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_development_current`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_development_current` AS select `sc`.`student_id` AS `student_id`,`sc`.`user_id` AS `user_id`,`sc`.`reg_no` AS `reg_no`,`sc`.`spr_no` AS `spr_no`,`sc`.`student_name` AS `student_name`,`sc`.`department_id` AS `department_id`,`sc`.`dept_code` AS `dept_code`,`sc`.`dept_name` AS `dept_name`,`sc`.`section_id` AS `section_id`,`sc`.`section_name` AS `section_name`,`sc`.`academic_year_id` AS `academic_year_id`,`sc`.`academic_year` AS `academic_year`,`sc`.`year_id` AS `year_id`,`sc`.`year_no` AS `year_no`,`sc`.`year_name` AS `year_name`,`sc`.`semester_id` AS `semester_id`,`sc`.`semester_no` AS `semester_no`,`sc`.`semester_name` AS `semester_name`,`sc`.`current_stage` AS `current_stage`,`sc`.`stage` AS `stage`,`sc`.`total_xp` AS `total_xp`,`sc`.`snapshot_total_xp` AS `snapshot_total_xp`,`sc`.`individual_xp` AS `individual_xp`,`sc`.`group_xp` AS `group_xp`,`sc`.`must_xp` AS `must_xp`,`sc`.`total_recorded_periods` AS `total_recorded_periods`,`sc`.`present_periods` AS `present_periods`,`sc`.`absent_periods` AS `absent_periods`,`sc`.`attendance_rate` AS `attendance_rate`,`current_level`.`id` AS `current_level_id`,`current_level`.`level_number` AS `current_level_number`,`current_level`.`title` AS `current_level_title`,`current_level`.`stage` AS `current_level_stage`,`current_level`.`xp_min` AS `current_level_xp_min`,`current_level`.`xp_max` AS `current_level_xp_max`,`next_level`.`id` AS `next_level_id`,`next_level`.`level_number` AS `next_level_number`,`next_level`.`title` AS `next_level_title`,`next_level`.`stage` AS `next_level_stage`,`next_level`.`xp_min` AS `next_level_xp_min`,`next_level`.`xp_max` AS `next_level_xp_max`,(case when (`next_level`.`id` is null) then 0 else greatest(0,(`next_level`.`xp_min` - `sc`.`total_xp`)) end) AS `xp_remaining_to_next_level`,(case when (`current_level`.`id` is null) then NULL when (`current_level`.`xp_max` <= `current_level`.`xp_min`) then 100.00 else round(least(100.0,greatest(0.0,((100.0 * (`sc`.`total_xp` - `current_level`.`xp_min`)) / nullif((`current_level`.`xp_max` - `current_level`.`xp_min`),0)))),2) end) AS `current_level_progress_percent` from ((`v_analytics_student_current` `sc` left join `levels` `current_level` on((`sc`.`total_xp` between `current_level`.`xp_min` and `current_level`.`xp_max`))) left join `levels` `next_level` on((`next_level`.`level_number` = (`current_level`.`level_number` + 1)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_scope`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_scope`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_scope` AS select `s`.`id` AS `student_id`,`s`.`user_id` AS `user_id`,`s`.`reg_no` AS `reg_no`,`s`.`spr_no` AS `spr_no`,`s`.`full_name` AS `student_name`,`s`.`department_id` AS `department_id`,`d`.`dept_code` AS `dept_code`,`d`.`dept_name` AS `dept_name`,`s`.`section_id` AS `section_id`,`sec`.`section_name` AS `section_name`,`s`.`academic_year_id` AS `academic_year_id`,`ay`.`academic_year` AS `academic_year`,`ay`.`start_date` AS `academic_year_start_date`,`ay`.`end_date` AS `academic_year_end_date`,`s`.`year_id` AS `year_id`,`y`.`year_no` AS `year_no`,`y`.`year_name` AS `year_name`,`s`.`semester_id` AS `semester_id`,`sem`.`semester_no` AS `semester_no`,`sem`.`semester_name` AS `semester_name`,`s`.`current_stage` AS `current_stage`,`s`.`stage` AS `stage`,`s`.`total_xp` AS `snapshot_total_xp`,`s`.`individual_xp` AS `individual_xp`,`s`.`group_xp` AS `group_xp`,`s`.`must_xp` AS `must_xp`,`s`.`is_captain` AS `is_captain`,`s`.`active` AS `active`,`s`.`deleted` AS `deleted`,`s`.`promotion_order` AS `promotion_order`,`s`.`promotion_timestamp` AS `promotion_timestamp` from (((((`students` `s` left join `departments` `d` on((`d`.`id` = `s`.`department_id`))) left join `section` `sec` on((`sec`.`id` = `s`.`section_id`))) left join `academic_years` `ay` on((`ay`.`id` = `s`.`academic_year_id`))) left join `years` `y` on((`y`.`id` = `s`.`year_id`))) left join `semesters` `sem` on((`sem`.`id` = `s`.`semester_id`))) where ((`s`.`active` = 1) and (coalesce(`s`.`deleted`,0) = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_streak_by_type`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_streak_by_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_streak_by_type` AS select `st`.`student_id` AS `student_id`,`ss`.`reg_no` AS `reg_no`,`ss`.`student_name` AS `student_name`,`ss`.`department_id` AS `department_id`,`ss`.`dept_code` AS `dept_code`,`ss`.`dept_name` AS `dept_name`,`ss`.`section_id` AS `section_id`,`ss`.`section_name` AS `section_name`,`st`.`streak_type` AS `streak_type`,`st`.`current_streak` AS `current_streak`,`st`.`is_broken` AS `is_broken`,`st`.`last_processed_date` AS `last_processed_date`,`st`.`last_updated` AS `last_updated` from (`streaks` `st` join `v_analytics_student_scope` `ss` on((`ss`.`student_id` = `st`.`student_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_xp_current`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_xp_current`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_xp_current` AS select `ss`.`student_id` AS `student_id`,coalesce(`ss`.`snapshot_total_xp`,0) AS `snapshot_total_xp`,coalesce(`ss`.`individual_xp`,0) AS `individual_xp`,coalesce(`ss`.`group_xp`,0) AS `group_xp`,coalesce(`ss`.`must_xp`,0) AS `must_xp`,coalesce(sum(`xtf`.`net_xp`),0) AS `calculated_total_net_xp`,coalesce(sum(`xtf`.`earned_xp`),0) AS `calculated_earned_xp`,coalesce(sum(`xtf`.`penalty_xp`),0) AS `calculated_penalty_xp`,count(`xtf`.`xp_transaction_id`) AS `approved_transaction_count` from (`v_analytics_student_scope` `ss` left join `v_analytics_xp_transaction_fact` `xtf` on((`xtf`.`student_id` = `ss`.`student_id`))) group by `ss`.`student_id`,`ss`.`snapshot_total_xp`,`ss`.`individual_xp`,`ss`.`group_xp`,`ss`.`must_xp` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_xp_daily`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_xp_daily`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_xp_daily` AS select `v_analytics_xp_transaction_fact`.`transaction_date` AS `transaction_date`,`v_analytics_xp_transaction_fact`.`student_id` AS `student_id`,`v_analytics_xp_transaction_fact`.`current_academic_year_id` AS `current_academic_year_id`,`v_analytics_xp_transaction_fact`.`current_department_id` AS `current_department_id`,`v_analytics_xp_transaction_fact`.`current_section_id` AS `current_section_id`,`v_analytics_xp_transaction_fact`.`current_year_id` AS `current_year_id`,`v_analytics_xp_transaction_fact`.`current_semester_id` AS `current_semester_id`,min(`v_analytics_xp_transaction_fact`.`reg_no`) AS `reg_no`,min(`v_analytics_xp_transaction_fact`.`student_name`) AS `student_name`,min(`v_analytics_xp_transaction_fact`.`current_academic_year`) AS `current_academic_year`,min(`v_analytics_xp_transaction_fact`.`current_dept_code`) AS `current_dept_code`,min(`v_analytics_xp_transaction_fact`.`current_dept_name`) AS `current_dept_name`,min(`v_analytics_xp_transaction_fact`.`current_section_name`) AS `current_section_name`,min(`v_analytics_xp_transaction_fact`.`current_year_no`) AS `current_year_no`,min(`v_analytics_xp_transaction_fact`.`current_year_name`) AS `current_year_name`,min(`v_analytics_xp_transaction_fact`.`current_semester_no`) AS `current_semester_no`,min(`v_analytics_xp_transaction_fact`.`current_semester_name`) AS `current_semester_name`,sum(`v_analytics_xp_transaction_fact`.`earned_xp`) AS `earned_xp`,sum(`v_analytics_xp_transaction_fact`.`penalty_xp`) AS `penalty_xp`,sum(`v_analytics_xp_transaction_fact`.`net_xp`) AS `net_xp`,count(0) AS `transaction_count` from `v_analytics_xp_transaction_fact` group by `v_analytics_xp_transaction_fact`.`transaction_date`,`v_analytics_xp_transaction_fact`.`student_id`,`v_analytics_xp_transaction_fact`.`current_academic_year_id`,`v_analytics_xp_transaction_fact`.`current_department_id`,`v_analytics_xp_transaction_fact`.`current_section_id`,`v_analytics_xp_transaction_fact`.`current_year_id`,`v_analytics_xp_transaction_fact`.`current_semester_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_student_xp_monthly`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_student_xp_monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_student_xp_monthly` AS select date_format(`v_analytics_xp_transaction_fact`.`transaction_date`,'%Y-%m') AS `period_month`,year(`v_analytics_xp_transaction_fact`.`transaction_date`) AS `calendar_year`,month(`v_analytics_xp_transaction_fact`.`transaction_date`) AS `calendar_month`,`v_analytics_xp_transaction_fact`.`student_id` AS `student_id`,`v_analytics_xp_transaction_fact`.`current_academic_year_id` AS `current_academic_year_id`,`v_analytics_xp_transaction_fact`.`current_department_id` AS `current_department_id`,`v_analytics_xp_transaction_fact`.`current_section_id` AS `current_section_id`,`v_analytics_xp_transaction_fact`.`current_year_id` AS `current_year_id`,`v_analytics_xp_transaction_fact`.`current_semester_id` AS `current_semester_id`,min(`v_analytics_xp_transaction_fact`.`reg_no`) AS `reg_no`,min(`v_analytics_xp_transaction_fact`.`student_name`) AS `student_name`,min(`v_analytics_xp_transaction_fact`.`current_academic_year`) AS `current_academic_year`,min(`v_analytics_xp_transaction_fact`.`current_dept_code`) AS `current_dept_code`,min(`v_analytics_xp_transaction_fact`.`current_dept_name`) AS `current_dept_name`,min(`v_analytics_xp_transaction_fact`.`current_section_name`) AS `current_section_name`,min(`v_analytics_xp_transaction_fact`.`current_year_no`) AS `current_year_no`,min(`v_analytics_xp_transaction_fact`.`current_year_name`) AS `current_year_name`,min(`v_analytics_xp_transaction_fact`.`current_semester_no`) AS `current_semester_no`,min(`v_analytics_xp_transaction_fact`.`current_semester_name`) AS `current_semester_name`,sum(`v_analytics_xp_transaction_fact`.`earned_xp`) AS `earned_xp`,sum(`v_analytics_xp_transaction_fact`.`penalty_xp`) AS `penalty_xp`,sum(`v_analytics_xp_transaction_fact`.`net_xp`) AS `net_xp`,count(0) AS `transaction_count` from `v_analytics_xp_transaction_fact` group by date_format(`v_analytics_xp_transaction_fact`.`transaction_date`,'%Y-%m'),year(`v_analytics_xp_transaction_fact`.`transaction_date`),month(`v_analytics_xp_transaction_fact`.`transaction_date`),`v_analytics_xp_transaction_fact`.`student_id`,`v_analytics_xp_transaction_fact`.`current_academic_year_id`,`v_analytics_xp_transaction_fact`.`current_department_id`,`v_analytics_xp_transaction_fact`.`current_section_id`,`v_analytics_xp_transaction_fact`.`current_year_id`,`v_analytics_xp_transaction_fact`.`current_semester_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_xp_scope_monthly`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_xp_scope_monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_xp_scope_monthly` AS select date_format(`xt`.`submitted_at`,'%Y-%m') AS `period_month`,year(`xt`.`submitted_at`) AS `calendar_year`,month(`xt`.`submitted_at`) AS `calendar_month`,`s`.`academic_year_id` AS `current_academic_year_id`,`s`.`department_id` AS `current_department_id`,`s`.`section_id` AS `current_section_id`,`s`.`year_id` AS `current_year_id`,`s`.`semester_id` AS `current_semester_id`,min(`ay`.`academic_year`) AS `current_academic_year`,min(`d`.`dept_code`) AS `current_dept_code`,min(`d`.`dept_name`) AS `current_dept_name`,min(`sec`.`section_name`) AS `current_section_name`,min(`y`.`year_no`) AS `current_year_no`,min(`y`.`year_name`) AS `current_year_name`,min(`sem`.`semester_no`) AS `current_semester_no`,min(`sem`.`semester_name`) AS `current_semester_name`,count(distinct `xt`.`student_id`) AS `active_students`,count(0) AS `transaction_count`,sum((case when (`xt`.`is_penalty` = 1) then 0 else `xt`.`xp_points` end)) AS `earned_xp`,sum((case when (`xt`.`is_penalty` = 1) then abs(`xt`.`xp_points`) else 0 end)) AS `penalty_xp`,sum((case when (`xt`.`is_penalty` = 1) then -(abs(`xt`.`xp_points`)) else `xt`.`xp_points` end)) AS `net_xp` from ((((((`xp_transactions` `xt` join `students` `s` on((`s`.`id` = `xt`.`student_id`))) left join `academic_years` `ay` on((`ay`.`id` = `s`.`academic_year_id`))) left join `departments` `d` on((`d`.`id` = `s`.`department_id`))) left join `section` `sec` on((`sec`.`id` = `s`.`section_id`))) left join `years` `y` on((`y`.`id` = `s`.`year_id`))) left join `semesters` `sem` on((`sem`.`id` = `s`.`semester_id`))) where (`xt`.`status` = 'APPROVED') group by date_format(`xt`.`submitted_at`,'%Y-%m'),year(`xt`.`submitted_at`),month(`xt`.`submitted_at`),`s`.`academic_year_id`,`s`.`department_id`,`s`.`section_id`,`s`.`year_id`,`s`.`semester_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_analytics_xp_transaction_fact`
--

/*!50001 DROP VIEW IF EXISTS `v_analytics_xp_transaction_fact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_analytics_xp_transaction_fact` AS select `xt`.`id` AS `xp_transaction_id`,`xt`.`student_id` AS `student_id`,`s`.`reg_no` AS `reg_no`,`s`.`full_name` AS `student_name`,`xt`.`activity_id` AS `activity_id`,`xt`.`activity_name` AS `activity_name`,`xt`.`category` AS `category`,`xt`.`status` AS `status`,`xt`.`is_penalty` AS `is_penalty`,`xt`.`cap_applied` AS `cap_applied`,`xt`.`stage_order` AS `stage_order`,`xt`.`submitted_at` AS `submitted_at`,cast(`xt`.`submitted_at` as date) AS `transaction_date`,`s`.`academic_year_id` AS `current_academic_year_id`,`ay`.`academic_year` AS `current_academic_year`,`s`.`department_id` AS `current_department_id`,`d`.`dept_code` AS `current_dept_code`,`d`.`dept_name` AS `current_dept_name`,`s`.`section_id` AS `current_section_id`,`sec`.`section_name` AS `current_section_name`,`s`.`year_id` AS `current_year_id`,`y`.`year_no` AS `current_year_no`,`y`.`year_name` AS `current_year_name`,`s`.`semester_id` AS `current_semester_id`,`sem`.`semester_no` AS `current_semester_no`,`sem`.`semester_name` AS `current_semester_name`,(case when (`xt`.`is_penalty` = 1) then -(abs(`xt`.`xp_points`)) else `xt`.`xp_points` end) AS `net_xp`,(case when (`xt`.`is_penalty` = 1) then 0 else `xt`.`xp_points` end) AS `earned_xp`,(case when (`xt`.`is_penalty` = 1) then abs(`xt`.`xp_points`) else 0 end) AS `penalty_xp`,`xt`.`approved_by` AS `approved_by` from ((((((`xp_transactions` `xt` join `students` `s` on((`s`.`id` = `xt`.`student_id`))) left join `academic_years` `ay` on((`ay`.`id` = `s`.`academic_year_id`))) left join `departments` `d` on((`d`.`id` = `s`.`department_id`))) left join `section` `sec` on((`sec`.`id` = `s`.`section_id`))) left join `years` `y` on((`y`.`id` = `s`.`year_id`))) left join `semesters` `sem` on((`sem`.`id` = `s`.`semester_id`))) where (`xt`.`status` = 'APPROVED') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-05 19:30:13
