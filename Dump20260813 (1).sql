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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_years`
--

LOCK TABLES `academic_years` WRITE;
/*!40000 ALTER TABLE `academic_years` DISABLE KEYS */;
INSERT INTO `academic_years` VALUES (9,'2026-2027','2026-08-13','2027-08-13','ACTIVE','2026-08-13 07:31:06','2026-08-13 07:31:06');
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_activity_subgroup` (`subgroup_id`,`activity_name`),
  UNIQUE KEY `uq_activity` (`category_id`,`activity_name`),
  KEY `activities_ibfk_2` (`stage_id`),
  KEY `FK7sdf72jxqeia9stse1x05o1mq` (`subgroup_id`),
  CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `activity_categories` (`id`),
  CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`),
  CONSTRAINT `FK7sdf72jxqeia9stse1x05o1mq` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=966 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `activity_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `activity_name` (`activity_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_categories`
--

LOCK TABLES `activity_categories` WRITE;
/*!40000 ALTER TABLE `activity_categories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_completion_requests`
--

LOCK TABLES `activity_completion_requests` WRITE;
/*!40000 ALTER TABLE `activity_completion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_completion_requests` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_stage_name` (`stage_name`),
  UNIQUE KEY `UK94qv2sd8jwbxsmdv8r4aibi7v` (`name`),
  UNIQUE KEY `uq_stage_name_year` (`stage_name`,`academic_year`),
  UNIQUE KEY `uq_name_year` (`name`,`academic_year`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `faculty_id` bigint NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=833 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_settings`
--

LOCK TABLES `attendance_settings` WRITE;
/*!40000 ALTER TABLE `attendance_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_settings` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKcuebofvgkgi4g9fxde2kmpr1h` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badges`
--

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `dept_code` (`dept_code`),
  UNIQUE KEY `dept_name` (`dept_name`),
  UNIQUE KEY `UKj6cwks7xecs5jov19ro8ge3qk` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (31,'TEST','Test Department','2026-08-13 07:31:06','2026-08-13 07:31:06',NULL,NULL,'Test Department');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline_logs`
--

LOCK TABLES `discipline_logs` WRITE;
/*!40000 ALTER TABLE `discipline_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `discipline_logs` ENABLE KEYS */;
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
  `phone_no` varchar(15) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_faculty_user` (`user_id`),
  KEY `fk_section_id` (`section_id`),
  KEY `faculty_ibfk_2` (`dept_id`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (187,'Male','2026-08-13 07:31:06','2026-08-13 07:31:06');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKli0eoqvxan7eauih6cmj751i1` (`level_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (13,'ROLE_SUPER_ADMIN','2026-08-13 07:31:06','2026-08-13 07:31:06'),(14,'ROLE_ADMIN','2026-08-13 07:31:06','2026-08-13 07:31:06'),(15,'ROLE_TEACHER','2026-08-13 07:31:06','2026-08-13 07:31:06'),(16,'ROLE_HOD','2026-08-13 07:31:06','2026-08-13 07:31:06'),(17,'ROLE_STUDENT','2026-08-13 07:31:06','2026-08-13 07:31:06');
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_department_section` (`dept_id`,`section_name`),
  CONSTRAINT `fk_section_department` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (58,31,'A','2026-08-13 07:31:06','2026-08-13 07:31:06');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES (10,1,'Semester 1','2026-08-13 07:31:06','2026-08-13 07:31:06');
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
  `guardian_phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `provider` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `student_id` bigint NOT NULL,
  `twilio_sid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `phone_no` varchar(15) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_no` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`,`relationship`),
  UNIQUE KEY `reg_no` (`reg_no`,`relationship`),
  KEY `idx_guardian_student` (`student_id`),
  CONSTRAINT `fk_guardian_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `phone_no` varchar(15) NOT NULL,
  `academic_year_id` bigint NOT NULL,
  `year_id` bigint NOT NULL,
  `semester_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `academic_year` varchar(20) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKe2rndfrsx22acpq2ty1caeuyw` (`email`),
  UNIQUE KEY `reg_no` (`reg_no`),
  UNIQUE KEY `uk_reg_no` (`reg_no`),
  UNIQUE KEY `spr_no` (`spr_no`),
  KEY `fk_students_gender` (`gender_id`),
  KEY `idx_students_academic_year` (`academic_year_id`),
  KEY `idx_students_year` (`year_id`),
  KEY `idx_students_semester` (`semester_id`),
  KEY `fk_students_user` (`user_id`),
  KEY `students_ibfk_1` (`department_id`),
  KEY `fk_students_section` (`section_id`),
  KEY `FKjgyxg2x86o4me9gr70elinthr` (`team_id`),
  KEY `FKfob3k6rgxnlssnrcy55yuxfkl` (`group_id`),
  CONSTRAINT `fk_students_academic_year` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `fk_students_gender` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_students_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `fk_students_semester` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  CONSTRAINT `fk_students_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_students_year` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  CONSTRAINT `FKfob3k6rgxnlssnrcy55yuxfkl` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `FKjgyxg2x86o4me9gr70elinthr` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (339,'Test Captain','test6','spr6',31,58,NULL,NULL,187,'1234567890',9,5,10,'2026-08-13 07:31:07','2026-08-13 07:31:07',NULL,_binary '',NULL,NULL,'test6@gmail.com',NULL,'$2a$10$vLP2bPE9j3vzR3BsXTHAQ.xETyqePDEKCSXFyptd/w6dGWMGdcXwu',NULL,100,NULL,NULL,1,1,0,161,NULL,NULL,0,0,0,_binary '',NULL,NULL),(340,'Test Vice Captain','test7','spr7',31,58,NULL,NULL,187,'1234567890',9,5,10,'2026-08-13 07:31:07','2026-08-13 07:31:07',NULL,_binary '',NULL,NULL,'test7@gmail.com',NULL,'$2a$10$vLP2bPE9j3vzR3BsXTHAQ.xETyqePDEKCSXFyptd/w6dGWMGdcXwu',NULL,100,NULL,NULL,1,1,0,161,NULL,NULL,0,0,0,_binary '\0',NULL,NULL),(341,'Test Member','test8','spr8',31,58,NULL,NULL,187,'1234567890',9,5,10,'2026-08-13 07:31:07','2026-08-13 07:31:07',NULL,_binary '',NULL,NULL,'test8@gmail.com',NULL,'$2a$10$vLP2bPE9j3vzR3BsXTHAQ.xETyqePDEKCSXFyptd/w6dGWMGdcXwu',NULL,100,NULL,NULL,1,1,0,161,NULL,NULL,0,0,0,_binary '\0',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_roles`
--

LOCK TABLES `sub_roles` WRITE;
/*!40000 ALTER TABLE `sub_roles` DISABLE KEYS */;
INSERT INTO `sub_roles` VALUES (4,15,'CC','2026-08-13 07:31:06','2026-08-13 07:31:06');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES (197,339,0,161,'CAPTAIN'),(198,340,0,161,'CAPTAIN'),(199,341,0,161,'CAPTAIN');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (161,'Test Team',3,339,NULL,'1st Year',124,31,58,340);
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
INSERT INTO `user_roles` VALUES (121,13),(122,14),(124,15),(125,15),(123,16);
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
INSERT INTO `user_sub_roles` VALUES (124,4);
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
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `active` bit(1) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `year` varchar(10) DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `assigned_academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  `academic_year` enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `FKsbg59w8q63i0oo53rlgvlcnjq` (`department_id`),
  KEY `fk_user_section` (`section_id`),
  CONSTRAINT `fk_user_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  CONSTRAINT `FKsbg59w8q63i0oo53rlgvlcnjq` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (121,'superadmin_test','test1@gmail.com','$2a$10$vLP2bPE9j3vzR3BsXTHAQ.xETyqePDEKCSXFyptd/w6dGWMGdcXwu',NULL,NULL,'2026-08-13 07:31:06',_binary '','Test Super Admin',NULL,31,58,NULL,NULL,NULL),(122,'admin_test','test2@gmail.com','$2a$10$vLP2bPE9j3vzR3BsXTHAQ.xETyqePDEKCSXFyptd/w6dGWMGdcXwu',NULL,NULL,'2026-08-13 07:31:06',_binary '','Test Admin',NULL,31,58,NULL,NULL,NULL),(123,'hod_test','test3@gmail.com','$2a$10$vLP2bPE9j3vzR3BsXTHAQ.xETyqePDEKCSXFyptd/w6dGWMGdcXwu',NULL,NULL,'2026-08-13 07:31:07',_binary '','Test HOD',NULL,31,58,NULL,NULL,NULL),(124,'cc_test','test4@gmail.com','$2a$10$vLP2bPE9j3vzR3BsXTHAQ.xETyqePDEKCSXFyptd/w6dGWMGdcXwu',NULL,NULL,'2026-08-13 07:31:07',_binary '','Test Class Coordinator',NULL,31,58,NULL,NULL,NULL),(125,'teacher_test','test5@gmail.com','$2a$10$vLP2bPE9j3vzR3BsXTHAQ.xETyqePDEKCSXFyptd/w6dGWMGdcXwu',NULL,NULL,'2026-08-13 07:31:07',_binary '','Test Teacher',NULL,31,58,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `years`
--

LOCK TABLES `years` WRITE;
/*!40000 ALTER TABLE `years` DISABLE KEYS */;
INSERT INTO `years` VALUES (5,1,'1st Year','2026-08-13 07:31:06','2026-08-13 07:31:06');
/*!40000 ALTER TABLE `years` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-13 13:38:48
