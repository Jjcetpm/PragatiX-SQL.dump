CREATE DATABASE  IF NOT EXISTS `neopat` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `neopat`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: neopa_sms
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
-- GTID state at the beginning of the backup 
--



--
-- Table structure for table `assessment_2027`
--

DROP TABLE IF EXISTS `assessment_2027`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_2027` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attempts` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` decimal(7,2) NOT NULL,
  `processing_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `received_at` datetime(6) NOT NULL,
  `result_analysis_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_wise_marks` json DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `submit_time` datetime(6) DEFAULT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_a2027_email_test` (`email`,`test_id`),
  KEY `idx_a2027_status` (`processing_status`),
  KEY `idx_a2027_email` (`email`),
  KEY `idx_a2027_test_id` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assessment_2028`
--

DROP TABLE IF EXISTS `assessment_2028`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_2028` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attempts` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` decimal(7,2) NOT NULL,
  `processing_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `received_at` datetime(6) NOT NULL,
  `result_analysis_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_wise_marks` json DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `submit_time` datetime(6) DEFAULT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_a2028_email_test` (`email`,`test_id`),
  KEY `idx_a2028_status` (`processing_status`),
  KEY `idx_a2028_email` (`email`),
  KEY `idx_a2028_test_id` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assessment_2029`
--

DROP TABLE IF EXISTS `assessment_2029`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_2029` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attempts` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` decimal(7,2) NOT NULL,
  `processing_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `received_at` datetime(6) NOT NULL,
  `result_analysis_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_wise_marks` json DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `submit_time` datetime(6) DEFAULT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_a2029_email_test` (`email`,`test_id`),
  KEY `idx_a2029_status` (`processing_status`),
  KEY `idx_a2029_email` (`email`),
  KEY `idx_a2029_test_id` (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assessment_2030`
--

DROP TABLE IF EXISTS `assessment_2030`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_2030` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attempts` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` decimal(7,2) NOT NULL,
  `processing_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `received_at` datetime(6) NOT NULL,
  `result_analysis_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_wise_marks` json DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `submit_time` datetime(6) DEFAULT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_a2030_email_test` (`email`,`test_id`),
  KEY `idx_a2030_status` (`processing_status`),
  KEY `idx_a2030_email` (`email`),
  KEY `idx_a2030_test_id` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assessment_history`
--

DROP TABLE IF EXISTS `assessment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `source_assessment_id` bigint DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` decimal(7,2) NOT NULL,
  `total_marks` decimal(7,2) NOT NULL,
  `attempts` int DEFAULT '1',
  `result_analysis_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL,
  `section_wise_marks` json DEFAULT NULL,
  `sms_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_failure_reason` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_sent_at` datetime DEFAULT NULL,
  `processed_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `batch_year` int DEFAULT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hist_email` (`email`),
  KEY `idx_hist_test_id` (`test_id`),
  KEY `idx_hist_sms_status` (`sms_status`),
  KEY `idx_hist_batch_email` (`batch_year`,`email`),
  KEY `idx_hist_batch_status` (`batch_year`,`sms_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_audit_event` (`event_type`),
  KEY `idx_audit_created` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `failed_assessment`
--

DROP TABLE IF EXISTS `failed_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_assessment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `source_assessment_id` bigint DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` decimal(7,2) DEFAULT NULL,
  `total_marks` decimal(7,2) DEFAULT NULL,
  `attempts` int DEFAULT '1',
  `result_analysis_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL,
  `section_wise_marks` json DEFAULT NULL,
  `raw_payload` longtext COLLATE utf8mb4_unicode_ci,
  `failure_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failure_reason` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `retry_count` int NOT NULL DEFAULT '0',
  `last_retry_at` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FAILED',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resolved_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fail_email` (`email`),
  KEY `idx_fail_type` (`failure_type`),
  KEY `idx_fail_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neopat_sms_execution`
--

DROP TABLE IF EXISTS `neopat_sms_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neopat_sms_execution` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `scheduled_date` date NOT NULL,
  `scheduled_time` time NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `completed_at` datetime DEFAULT NULL,
  `success_count` int NOT NULL DEFAULT '0',
  `failure_count` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `batch_year` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_exec_date_time` (`scheduled_date`,`scheduled_time`),
  UNIQUE KEY `uk_exec_batch_date_time` (`batch_year`,`scheduled_date`,`scheduled_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neopat_sms_schedule`
--

DROP TABLE IF EXISTS `neopat_sms_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neopat_sms_schedule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `day_of_week` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SATURDAY',
  `send_time` time NOT NULL DEFAULT '10:00:00',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Asia/Kolkata',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_year` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_schedule_batch_year` (`batch_year`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parent_contact`
--

DROP TABLE IF EXISTS `parent_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_parent_student_email` (`student_email`),
  KEY `idx_parent_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parent_contact_backup`
--

DROP TABLE IF EXISTS `parent_contact_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_contact_backup` (
  `id` bigint NOT NULL DEFAULT '0',
  `student_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-11 19:58:14
