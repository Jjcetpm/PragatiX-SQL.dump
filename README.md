# 📘 PragatiX Database (`spdms_lab`) Complete SQL Reference & Schema Documentation

This repository contains the **complete MySQL database dump, schema DDL queries, data scripts, and individual table query files** for the **PragatiX / SPDMS Lab Database System** exported on **August 6, 2026**.

---

## 📌 Database Specifications

| Attribute | Details |
| :--- | :--- |
| **Database Name** | `spdms_lab` |
| **Database Engine** | MySQL InnoDB (8.0.46) |
| **Default Character Set** | `utf8mb4` |
| **Default Collation** | `utf8mb4_0900_ai_ci` |
| **Total Database Tables** | **59 Tables** |
| **Export Date** | August 6, 2026 (19:24:07 UTC) |

---

## 📂 Repository File Manifest

```
├── schemas/                  # 🟢 PURE TABLE SCHEMAS (Individual CREATE TABLE DDL files for all 59 tables)
├── data/                     # 🟡 PURE TABLE DATA (Individual INSERT INTO DML files for all 59 tables)
├── tables/                   # 🔵 FULL TABLE DUMPS (Schema DDL + Data DML combined per table)
├── 00_ALL_TABLE_SCHEMAS.sql  # 📜 Consolidated DDL Script (All 59 CREATE TABLE definitions)
├── 00_ALL_TABLE_DATA.sql     # 📜 Consolidated DML Script (All INSERT INTO statements)
├── Dump20260806.sql          # 💾 Complete Single-File SQL Backup
└── README.md                 # 📖 Comprehensive Database Schema Documentation & Field Dictionary
```

---

## 🗂️ Complete Directory Index (All 59 Tables)

| # | Table Name | Schema DDL File | Data File | Combined File | Primary Module |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `academic_holiday` | [`schemas/academic_holiday.sql`](schemas/academic_holiday.sql) | [`data/academic_holiday.sql`](data/academic_holiday.sql) | [`tables/academic_holiday.sql`](tables/academic_holiday.sql) | Academic Infrastructure |
| 2 | `academic_month` | [`schemas/academic_month.sql`](schemas/academic_month.sql) | [`data/academic_month.sql`](data/academic_month.sql) | [`tables/academic_month.sql`](tables/academic_month.sql) | Academic Infrastructure |
| 3 | `academic_week` | [`schemas/academic_week.sql`](schemas/academic_week.sql) | [`data/academic_week.sql`](data/academic_week.sql) | [`tables/academic_week.sql`](tables/academic_week.sql) | Academic Infrastructure |
| 4 | `academic_years` | [`schemas/academic_years.sql`](schemas/academic_years.sql) | [`data/academic_years.sql`](data/academic_years.sql) | [`tables/academic_years.sql`](tables/academic_years.sql) | Academic Infrastructure |
| 5 | `activities` | [`schemas/activities.sql`](schemas/activities.sql) | [`data/activities.sql`](data/activities.sql) | [`tables/activities.sql`](tables/activities.sql) | Gamification & Activities |
| 6 | `activity_assignments` | [`schemas/activity_assignments.sql`](schemas/activity_assignments.sql) | [`data/activity_assignments.sql`](data/activity_assignments.sql) | [`tables/activity_assignments.sql`](tables/activity_assignments.sql) | Gamification & Activities |
| 7 | `activity_categories` | [`schemas/activity_categories.sql`](schemas/activity_categories.sql) | [`data/activity_categories.sql`](data/activity_categories.sql) | [`tables/activity_categories.sql`](tables/activity_categories.sql) | Gamification & Activities |
| 8 | `activity_completion_requests` | [`schemas/activity_completion_requests.sql`](schemas/activity_completion_requests.sql) | [`data/activity_completion_requests.sql`](data/activity_completion_requests.sql) | [`tables/activity_completion_requests.sql`](tables/activity_completion_requests.sql) | Gamification & Activities |
| 9 | `activity_stage_mappings` | [`schemas/activity_stage_mappings.sql`](schemas/activity_stage_mappings.sql) | [`data/activity_stage_mappings.sql`](data/activity_stage_mappings.sql) | [`tables/activity_stage_mappings.sql`](tables/activity_stage_mappings.sql) | Gamification & Activities |
| 10 | `activity_stages` | [`schemas/activity_stages.sql`](schemas/activity_stages.sql) | [`data/activity_stages.sql`](data/activity_stages.sql) | [`tables/activity_stages.sql`](tables/activity_stages.sql) | Gamification & Activities |
| 11 | `activity_subgroups` | [`schemas/activity_subgroups.sql`](schemas/activity_subgroups.sql) | [`data/activity_subgroups.sql`](data/activity_subgroups.sql) | [`tables/activity_subgroups.sql`](tables/activity_subgroups.sql) | Gamification & Activities |
| 12 | `alternate_working_day` | [`schemas/alternate_working_day.sql`](schemas/alternate_working_day.sql) | [`data/alternate_working_day.sql`](data/alternate_working_day.sql) | [`tables/alternate_working_day.sql`](tables/alternate_working_day.sql) | Academic Infrastructure |
| 13 | `attendance` | [`schemas/attendance.sql`](schemas/attendance.sql) | [`data/attendance.sql`](data/attendance.sql) | [`tables/attendance.sql`](tables/attendance.sql) | Attendance & Discipline |
| 14 | `attendance_holiday` | [`schemas/attendance_holiday.sql`](schemas/attendance_holiday.sql) | [`data/attendance_holiday.sql`](data/attendance_holiday.sql) | [`tables/attendance_holiday.sql`](tables/attendance_holiday.sql) | Attendance & Discipline |
| 15 | `attendance_records` | [`schemas/attendance_records.sql`](schemas/attendance_records.sql) | [`data/attendance_records.sql`](data/attendance_records.sql) | [`tables/attendance_records.sql`](tables/attendance_records.sql) | Attendance & Discipline |
| 16 | `attendance_sessions` | [`schemas/attendance_sessions.sql`](schemas/attendance_sessions.sql) | [`data/attendance_sessions.sql`](data/attendance_sessions.sql) | [`tables/attendance_sessions.sql`](tables/attendance_sessions.sql) | Attendance & Discipline |
| 17 | `attendance_settings` | [`schemas/attendance_settings.sql`](schemas/attendance_settings.sql) | [`data/attendance_settings.sql`](data/attendance_settings.sql) | [`tables/attendance_settings.sql`](tables/attendance_settings.sql) | Attendance & Discipline |
| 18 | `badge_requests` | [`schemas/badge_requests.sql`](schemas/badge_requests.sql) | [`data/badge_requests.sql`](data/badge_requests.sql) | [`tables/badge_requests.sql`](tables/badge_requests.sql) | Badges & Missions |
| 19 | `badges` | [`schemas/badges.sql`](schemas/badges.sql) | [`data/badges.sql`](data/badges.sql) | [`tables/badges.sql`](tables/badges.sql) | Badges & Missions |
| 20 | `captain_reward_settings` | [`schemas/captain_reward_settings.sql`](schemas/captain_reward_settings.sql) | [`data/captain_reward_settings.sql`](data/captain_reward_settings.sql) | [`tables/captain_reward_settings.sql`](tables/captain_reward_settings.sql) | Gamification & Activities |
| 21 | `custom_frequencies` | [`schemas/custom_frequencies.sql`](schemas/custom_frequencies.sql) | [`data/custom_frequencies.sql`](data/custom_frequencies.sql) | [`tables/custom_frequencies.sql`](tables/custom_frequencies.sql) | Groups & Teams |
| 22 | `departments` | [`schemas/departments.sql`](schemas/departments.sql) | [`data/departments.sql`](data/departments.sql) | [`tables/departments.sql`](tables/departments.sql) | Academic Infrastructure |
| 23 | `discipline_logs` | [`schemas/discipline_logs.sql`](schemas/discipline_logs.sql) | [`data/discipline_logs.sql`](data/discipline_logs.sql) | [`tables/discipline_logs.sql`](tables/discipline_logs.sql) | Attendance & Discipline |
| 24 | `faculty` | [`schemas/faculty.sql`](schemas/faculty.sql) | [`data/faculty.sql`](data/faculty.sql) | [`tables/faculty.sql`](tables/faculty.sql) | User Management |
| 25 | `genders` | [`schemas/genders.sql`](schemas/genders.sql) | [`data/genders.sql`](data/genders.sql) | [`tables/genders.sql`](tables/genders.sql) | User Management |
| 26 | `group_deletion_audit_log` | [`schemas/group_deletion_audit_log.sql`](schemas/group_deletion_audit_log.sql) | [`data/group_deletion_audit_log.sql`](data/group_deletion_audit_log.sql) | [`tables/group_deletion_audit_log.sql`](tables/group_deletion_audit_log.sql) | Groups & Teams |
| 27 | `group_members` | [`schemas/group_members.sql`](schemas/group_members.sql) | [`data/group_members.sql`](data/group_members.sql) | [`tables/group_members.sql`](tables/group_members.sql) | Groups & Teams |
| 28 | `groups` | [`schemas/groups.sql`](schemas/groups.sql) | [`data/groups.sql`](data/groups.sql) | [`tables/groups.sql`](tables/groups.sql) | Groups & Teams |
| 29 | `levels` | [`schemas/levels.sql`](schemas/levels.sql) | [`data/levels.sql`](data/levels.sql) | [`tables/levels.sql`](tables/levels.sql) | Gamification & Activities |
| 30 | `mission_submissions` | [`schemas/mission_submissions.sql`](schemas/mission_submissions.sql) | [`data/mission_submissions.sql`](data/mission_submissions.sql) | [`tables/mission_submissions.sql`](tables/mission_submissions.sql) | Badges & Missions |
| 31 | `missions` | [`schemas/missions.sql`](schemas/missions.sql) | [`data/missions.sql`](data/missions.sql) | [`tables/missions.sql`](tables/missions.sql) | Badges & Missions |
| 32 | `notifications` | [`schemas/notifications.sql`](schemas/notifications.sql) | [`data/notifications.sql`](data/notifications.sql) | [`tables/notifications.sql`](tables/notifications.sql) | Notifications & Alerts |
| 33 | `penalty_requests` | [`schemas/penalty_requests.sql`](schemas/penalty_requests.sql) | [`data/penalty_requests.sql`](data/penalty_requests.sql) | [`tables/penalty_requests.sql`](tables/penalty_requests.sql) | Attendance & Discipline |
| 34 | `roles` | [`schemas/roles.sql`](schemas/roles.sql) | [`data/roles.sql`](data/roles.sql) | [`tables/roles.sql`](tables/roles.sql) | User Management |
| 35 | `section` | [`schemas/section.sql`](schemas/section.sql) | [`data/section.sql`](data/section.sql) | [`tables/section.sql`](tables/section.sql) | Academic Infrastructure |
| 36 | `semesters` | [`schemas/semesters.sql`](schemas/semesters.sql) | [`data/semesters.sql`](data/semesters.sql) | [`tables/semesters.sql`](tables/semesters.sql) | Academic Infrastructure |
| 37 | `sms_notifications` | [`schemas/sms_notifications.sql`](schemas/sms_notifications.sql) | [`data/sms_notifications.sql`](data/sms_notifications.sql) | [`tables/sms_notifications.sql`](tables/sms_notifications.sql) | Notifications & Alerts |
| 38 | `stage_activity_mappings` | [`schemas/stage_activity_mappings.sql`](schemas/stage_activity_mappings.sql) | [`data/stage_activity_mappings.sql`](data/stage_activity_mappings.sql) | [`tables/stage_activity_mappings.sql`](tables/stage_activity_mappings.sql) | Gamification & Activities |
| 39 | `stage_teams` | [`schemas/stage_teams.sql`](schemas/stage_teams.sql) | [`data/stage_teams.sql`](data/stage_teams.sql) | [`tables/stage_teams.sql`](tables/stage_teams.sql) | Gamification & Activities |
| 40 | `streaks` | [`schemas/streaks.sql`](schemas/streaks.sql) | [`data/streaks.sql`](data/streaks.sql) | [`tables/streaks.sql`](tables/streaks.sql) | Gamification & Activities |
| 41 | `student_activity_streaks` | [`schemas/student_activity_streaks.sql`](schemas/student_activity_streaks.sql) | [`data/student_activity_streaks.sql`](data/student_activity_streaks.sql) | [`tables/student_activity_streaks.sql`](tables/student_activity_streaks.sql) | Gamification & Activities |
| 42 | `student_activity_xp` | [`schemas/student_activity_xp.sql`](schemas/student_activity_xp.sql) | [`data/student_activity_xp.sql`](data/student_activity_xp.sql) | [`tables/student_activity_xp.sql`](tables/student_activity_xp.sql) | Gamification & Activities |
| 43 | `student_badges` | [`schemas/student_badges.sql`](schemas/student_badges.sql) | [`data/student_badges.sql`](data/student_badges.sql) | [`tables/student_badges.sql`](tables/student_badges.sql) | Badges & Missions |
| 44 | `student_guardians` | [`schemas/student_guardians.sql`](schemas/student_guardians.sql) | [`data/student_guardians.sql`](data/student_guardians.sql) | [`tables/student_guardians.sql`](tables/student_guardians.sql) | User Management |
| 45 | `student_points_history` | [`schemas/student_points_history.sql`](schemas/student_points_history.sql) | [`data/student_points_history.sql`](data/student_points_history.sql) | [`tables/student_points_history.sql`](tables/student_points_history.sql) | General Core |
| 46 | `students` | [`schemas/students.sql`](schemas/students.sql) | [`data/students.sql`](data/students.sql) | [`tables/students.sql`](tables/students.sql) | User Management |
| 47 | `students_group` | [`schemas/students_group.sql`](schemas/students_group.sql) | [`data/students_group.sql`](data/students_group.sql) | [`tables/students_group.sql`](tables/students_group.sql) | Groups & Teams |
| 48 | `sub_roles` | [`schemas/sub_roles.sql`](schemas/sub_roles.sql) | [`data/sub_roles.sql`](data/sub_roles.sql) | [`tables/sub_roles.sql`](tables/sub_roles.sql) | User Management |
| 49 | `subjects` | [`schemas/subjects.sql`](schemas/subjects.sql) | [`data/subjects.sql`](data/subjects.sql) | [`tables/subjects.sql`](tables/subjects.sql) | Academic Infrastructure |
| 50 | `team_members` | [`schemas/team_members.sql`](schemas/team_members.sql) | [`data/team_members.sql`](data/team_members.sql) | [`tables/team_members.sql`](tables/team_members.sql) | Groups & Teams |
| 51 | `team_removal_requests` | [`schemas/team_removal_requests.sql`](schemas/team_removal_requests.sql) | [`data/team_removal_requests.sql`](data/team_removal_requests.sql) | [`tables/team_removal_requests.sql`](tables/team_removal_requests.sql) | Groups & Teams |
| 52 | `teams` | [`schemas/teams.sql`](schemas/teams.sql) | [`data/teams.sql`](data/teams.sql) | [`tables/teams.sql`](tables/teams.sql) | Groups & Teams |
| 53 | `timetable` | [`schemas/timetable.sql`](schemas/timetable.sql) | [`data/timetable.sql`](data/timetable.sql) | [`tables/timetable.sql`](tables/timetable.sql) | Academic Infrastructure |
| 54 | `timetable_entries` | [`schemas/timetable_entries.sql`](schemas/timetable_entries.sql) | [`data/timetable_entries.sql`](data/timetable_entries.sql) | [`tables/timetable_entries.sql`](tables/timetable_entries.sql) | Academic Infrastructure |
| 55 | `user_roles` | [`schemas/user_roles.sql`](schemas/user_roles.sql) | [`data/user_roles.sql`](data/user_roles.sql) | [`tables/user_roles.sql`](tables/user_roles.sql) | User Management |
| 56 | `user_sub_roles` | [`schemas/user_sub_roles.sql`](schemas/user_sub_roles.sql) | [`data/user_sub_roles.sql`](data/user_sub_roles.sql) | [`tables/user_sub_roles.sql`](tables/user_sub_roles.sql) | User Management |
| 57 | `users` | [`schemas/users.sql`](schemas/users.sql) | [`data/users.sql`](data/users.sql) | [`tables/users.sql`](tables/users.sql) | User Management |
| 58 | `xp_transactions` | [`schemas/xp_transactions.sql`](schemas/xp_transactions.sql) | [`data/xp_transactions.sql`](data/xp_transactions.sql) | [`tables/xp_transactions.sql`](tables/xp_transactions.sql) | Gamification & Activities |
| 59 | `years` | [`schemas/years.sql`](schemas/years.sql) | [`data/years.sql`](data/years.sql) | [`tables/years.sql`](tables/years.sql) | Academic Infrastructure |


---

## 🔍 Detailed Field Dictionary & Table Schemas

Below is the field-by-field column breakdown for all 59 tables in the `spdms_lab` database:

### 1. Table: `academic_holiday`
* **Schema DDL Query File:** [`schemas/academic_holiday.sql`](schemas/academic_holiday.sql)
* **Data DML File:** [`data/academic_holiday.sql`](data/academic_holiday.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `holiday_date` | `date NOT NULL` |
| `holiday_name` | `varchar(255) NOT NULL` |
| `academic_month_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKpkyjlle225v8tu8nu8hohby6o` (`academic_month_id`)`
- `CONSTRAINT `FKpkyjlle225v8tu8nu8hohby6o` FOREIGN KEY (`academic_month_id`) REFERENCES `academic_month` (`id`)`

---

### 2. Table: `academic_month`
* **Schema DDL Query File:** [`schemas/academic_month.sql`](schemas/academic_month.sql)
* **Data DML File:** [`data/academic_month.sql`](data/academic_month.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `month` | `int NOT NULL` |
| `updated_at` | `datetime(6) DEFAULT NULL` |
| `year` | `int NOT NULL` |
| `academic_year_enum` | `enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`

---

### 3. Table: `academic_week`
* **Schema DDL Query File:** [`schemas/academic_week.sql`](schemas/academic_week.sql)
* **Data DML File:** [`data/academic_week.sql`](data/academic_week.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `end_date` | `date NOT NULL` |
| `start_date` | `date NOT NULL` |
| `week_number` | `int NOT NULL` |
| `academic_month_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKo4fja4rpe0m44rdyg4xyy7hjf` (`academic_month_id`)`
- `CONSTRAINT `FKo4fja4rpe0m44rdyg4xyy7hjf` FOREIGN KEY (`academic_month_id`) REFERENCES `academic_month` (`id`)`

---

### 4. Table: `academic_years`
* **Schema DDL Query File:** [`schemas/academic_years.sql`](schemas/academic_years.sql)
* **Data DML File:** [`data/academic_years.sql`](data/academic_years.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `academic_year` | `varchar(20) NOT NULL` |
| `start_date` | `date NOT NULL` |
| `end_date` | `date NOT NULL` |
| `status` | `enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE'` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `academic_year` (`academic_year`)`

---

### 5. Table: `activities`
* **Schema DDL Query File:** [`schemas/activities.sql`](schemas/activities.sql)
* **Data DML File:** [`data/activities.sql`](data/activities.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `category_id` | `bigint DEFAULT NULL` |
| `stage_id` | `bigint DEFAULT NULL` |
| `activity_name` | `varchar(255) NOT NULL` |
| `activity_description` | `text` |
| `mode_type` | `varchar(50) NOT NULL` |
| `frequency` | `varchar(100) DEFAULT NULL` |
| `max_points` | `int NOT NULL` |
| `xp` | `varchar(100) DEFAULT NULL` |
| `cap` | `varchar(100) DEFAULT NULL` |
| `is_mandatory` | `tinyint(1) NOT NULL DEFAULT '0'` |
| `evidence_required` | `tinyint(1) NOT NULL DEFAULT '1'` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `category` | `varchar(50) DEFAULT NULL` |
| `description` | `text` |
| `evidence` | `varchar(255) DEFAULT NULL` |
| `justification` | `text` |
| `name` | `varchar(255) NOT NULL` |
| `owner_department` | `varchar(100) DEFAULT NULL` |
| `owner_subrole` | `varchar(100) DEFAULT NULL` |
| `type` | `varchar(50) DEFAULT NULL` |
| `xp_category` | `varchar(100) DEFAULT NULL` |
| `subgroup_id` | `bigint NOT NULL` |
| `department_id` | `varchar(50) DEFAULT NULL` |
| `teacher_id` | `varchar(50) DEFAULT NULL` |
| `display_order` | `int NOT NULL` |
| `maximum_awards` | `int DEFAULT NULL` |
| `status` | `varchar(50) NOT NULL` |
| `award_type` | `varchar(50) NOT NULL` |
| `award_xp` | `int NOT NULL` |
| `repeat_allowed` | `bit(1) NOT NULL` |
| `reset_period` | `varchar(50) DEFAULT NULL` |
| `award_days` | `varchar(200) DEFAULT NULL` |
| `award_frequency` | `varchar(50) DEFAULT NULL` |
| `xp_type` | `varchar(50) DEFAULT NULL` |
| `fail_xp` | `int DEFAULT '0'` |
| `pass_xp` | `int DEFAULT '0'` |
| `award_enabled` | `bit(1) NOT NULL` |
| `penalty_enabled` | `bit(1) NOT NULL` |
| `penalty_xp` | `int NOT NULL` |
| `assignment_mode` | `varchar(50) DEFAULT NULL` |
| `subgroup` | `varchar(255) DEFAULT NULL` |
| `allow_student_request` | `bit(1) DEFAULT NULL` |
| `assigned_academic_year` | `enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL` |
| `academic_year` | `enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL` |
| `attendance_engine_enabled` | `bit(1) NOT NULL` |
| `attendance_rule` | `varchar(20) DEFAULT NULL` |
| `manual_evidence_name` | `varchar(255) DEFAULT NULL` |
| `streak_enabled` | `bit(1) NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uq_activity_subgroup` (`subgroup_id`,`activity_name`)`
- `UNIQUE KEY `uq_activity` (`category_id`,`activity_name`)`
- `KEY `activities_ibfk_2` (`stage_id`)`
- `KEY `FK7sdf72jxqeia9stse1x05o1mq` (`subgroup_id`)`
- `CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `activity_categories` (`id`)`
- `CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`)`
- `CONSTRAINT `FK7sdf72jxqeia9stse1x05o1mq` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`)`

---

### 6. Table: `activity_assignments`
* **Schema DDL Query File:** [`schemas/activity_assignments.sql`](schemas/activity_assignments.sql)
* **Data DML File:** [`data/activity_assignments.sql`](data/activity_assignments.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `activity_id` | `bigint DEFAULT NULL` |
| `section_id` | `bigint DEFAULT NULL` |
| `faculty_id` | `bigint DEFAULT NULL` |
| `assigned_date` | `date NOT NULL DEFAULT (curdate())` |
| `status` | `enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE'` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `assigned_at` | `datetime(6) NOT NULL` |
| `assigned_by_id` | `bigint NOT NULL` |
| `department_id` | `bigint NOT NULL` |
| `teacher_id` | `bigint DEFAULT NULL` |
| `year` | `varchar(50) DEFAULT NULL` |
| `assignment_scope` | `enum('DEPARTMENT','GLOBAL','SECTION','SPECIFIC_FACULTY') NOT NULL` |
| `stage_id` | `bigint DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uq_activity_assignment` (`activity_id`,`section_id`,`faculty_id`)`
- `KEY `activity_assignments_ibfk_2` (`section_id`)`
- `KEY `activity_assignments_ibfk_3` (`faculty_id`)`
- `KEY `FKs6rb1fk0d3b4fmrpjs6ka2i4q` (`assigned_by_id`)`
- `KEY `FKs7l7yvgwwafjp00ii2yamsndp` (`department_id`)`
- `KEY `FKbo8m8a2oca785upuafbp48lov` (`teacher_id`)`
- `KEY `FKdksttwvyj7vewlu9fnm9ib250` (`stage_id`)`
- `CONSTRAINT `activity_assignments_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`
- `CONSTRAINT `activity_assignments_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)`
- `CONSTRAINT `activity_assignments_ibfk_3` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`)`
- `CONSTRAINT `FKbo8m8a2oca785upuafbp48lov` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `FKdksttwvyj7vewlu9fnm9ib250` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`)`
- `CONSTRAINT `FKs6rb1fk0d3b4fmrpjs6ka2i4q` FOREIGN KEY (`assigned_by_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `FKs7l7yvgwwafjp00ii2yamsndp` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)`

---

### 7. Table: `activity_categories`
* **Schema DDL Query File:** [`schemas/activity_categories.sql`](schemas/activity_categories.sql)
* **Data DML File:** [`data/activity_categories.sql`](data/activity_categories.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `activity_name` | `varchar(100) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `activity_name` (`activity_name`)`

---

### 8. Table: `activity_completion_requests`
* **Schema DDL Query File:** [`schemas/activity_completion_requests.sql`](schemas/activity_completion_requests.sql)
* **Data DML File:** [`data/activity_completion_requests.sql`](data/activity_completion_requests.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `student_id` | `bigint NOT NULL` |
| `team_id` | `bigint DEFAULT NULL` |
| `activity_id` | `bigint NOT NULL` |
| `cc_id` | `bigint DEFAULT NULL` |
| `proof_url` | `varchar(500) DEFAULT NULL` |
| `reason` | `text` |
| `status` | `varchar(20) NOT NULL` |
| `created_at` | `datetime DEFAULT NULL` |
| `approved_at` | `datetime DEFAULT NULL` |
| `approved_by` | `varchar(100) DEFAULT NULL` |
| `rejected_reason` | `text` |
| `updated_at` | `datetime DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `fk_acr_student` (`student_id`)`
- `KEY `fk_acr_team` (`team_id`)`
- `KEY `fk_acr_activity` (`activity_id`)`
- `KEY `fk_acr_cc` (`cc_id`)`
- `CONSTRAINT `fk_acr_activity` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`
- `CONSTRAINT `fk_acr_cc` FOREIGN KEY (`cc_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `fk_acr_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `fk_acr_team` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)`

---

### 9. Table: `activity_stage_mappings`
* **Schema DDL Query File:** [`schemas/activity_stage_mappings.sql`](schemas/activity_stage_mappings.sql)
* **Data DML File:** [`data/activity_stage_mappings.sql`](data/activity_stage_mappings.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `display_order` | `int NOT NULL` |
| `activity_id` | `bigint NOT NULL` |
| `stage_id` | `bigint NOT NULL` |
| `subgroup_id` | `bigint NOT NULL` |
| `award_enabled` | `bit(1) DEFAULT NULL` |
| `award_frequency` | `varchar(50) DEFAULT NULL` |
| `award_xp` | `int DEFAULT NULL` |
| `penalty_enabled` | `bit(1) DEFAULT NULL` |
| `penalty_xp` | `int DEFAULT NULL` |
| `assignment_mode` | `varchar(50) DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uq_stage_activity` (`stage_id`,`activity_id`)`
- `KEY `FK1laou9t3uc6gsexeng82y5smb` (`activity_id`)`
- `KEY `FKl4jjroqh5ffcxbcnyf6y4s374` (`subgroup_id`)`
- `CONSTRAINT `FK1laou9t3uc6gsexeng82y5smb` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`
- `CONSTRAINT `FKl4jjroqh5ffcxbcnyf6y4s374` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`)`
- `CONSTRAINT `FKrrtriom1ji8mf8ojvds2d2gsn` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`)`

---

### 10. Table: `activity_stages`
* **Schema DDL Query File:** [`schemas/activity_stages.sql`](schemas/activity_stages.sql)
* **Data DML File:** [`data/activity_stages.sql`](data/activity_stages.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `stage_name` | `varchar(100) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `description` | `varchar(255) DEFAULT NULL` |
| `name` | `varchar(100) NOT NULL` |
| `display_order` | `int NOT NULL` |
| `is_active` | `bit(1) NOT NULL` |
| `expected_xp` | `int NOT NULL DEFAULT '0'` |
| `status` | `enum('ACTIVE','COMPLETED','UPCOMING') NOT NULL` |
| `group_threshold` | `int NOT NULL` |
| `individual_threshold` | `int NOT NULL` |
| `must_threshold` | `int NOT NULL` |
| `end_datetime` | `datetime(6) DEFAULT NULL` |
| `start_datetime` | `datetime(6) DEFAULT NULL` |
| `use_combined_validation` | `bit(1) NOT NULL` |
| `use_date_validation` | `bit(1) NOT NULL` |
| `use_threshold_validation` | `bit(1) NOT NULL` |
| `academic_year` | `enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uq_stage_name` (`stage_name`)`
- `UNIQUE KEY `UK94qv2sd8jwbxsmdv8r4aibi7v` (`name`)`
- `UNIQUE KEY `uq_stage_name_year` (`stage_name`,`academic_year`)`
- `UNIQUE KEY `uq_name_year` (`name`,`academic_year`)`

---

### 11. Table: `activity_subgroups`
* **Schema DDL Query File:** [`schemas/activity_subgroups.sql`](schemas/activity_subgroups.sql)
* **Data DML File:** [`data/activity_subgroups.sql`](data/activity_subgroups.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `category` | `varchar(50) DEFAULT NULL` |
| `name` | `varchar(100) NOT NULL` |
| `threshold` | `int NOT NULL` |
| `assigned_department_id` | `bigint DEFAULT NULL` |
| `assigned_faculty_id` | `bigint DEFAULT NULL` |
| `stage_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKgvax9c9kfqxfvdjpago66nr8a` (`assigned_department_id`)`
- `KEY `FK1vp1g018b7stosiid9rg14tqd` (`assigned_faculty_id`)`
- `KEY `FK7wnk9awbww7qjslomg21f7hrm` (`stage_id`)`
- `CONSTRAINT `FK1vp1g018b7stosiid9rg14tqd` FOREIGN KEY (`assigned_faculty_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `FK7wnk9awbww7qjslomg21f7hrm` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`)`
- `CONSTRAINT `FKgvax9c9kfqxfvdjpago66nr8a` FOREIGN KEY (`assigned_department_id`) REFERENCES `departments` (`id`)`

---

### 12. Table: `alternate_working_day`
* **Schema DDL Query File:** [`schemas/alternate_working_day.sql`](schemas/alternate_working_day.sql)
* **Data DML File:** [`data/alternate_working_day.sql`](data/alternate_working_day.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `created_by` | `varchar(255) DEFAULT NULL` |
| `effective_date` | `date NOT NULL` |
| `original_holiday_day` | `varchar(255) NOT NULL` |
| `reason` | `varchar(255) DEFAULT NULL` |
| `updated_at` | `datetime(6) DEFAULT NULL` |
| `working_day` | `varchar(255) NOT NULL` |
| `academic_calendar_month_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKhhql9tdp4yqtibhjbqt1or8kp` (`academic_calendar_month_id`)`
- `CONSTRAINT `FKhhql9tdp4yqtibhjbqt1or8kp` FOREIGN KEY (`academic_calendar_month_id`) REFERENCES `academic_month` (`id`)`

---

### 13. Table: `attendance`
* **Schema DDL Query File:** [`schemas/attendance.sql`](schemas/attendance.sql)
* **Data DML File:** [`data/attendance.sql`](data/attendance.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `student_id` | `bigint NOT NULL` |
| `faculty_id` | `bigint NOT NULL` |
| `status` | `enum('PRESENT','ABSENT','OD','LEAVE') NOT NULL DEFAULT 'PRESENT'` |
| `remarks` | `varchar(255) DEFAULT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `reg_no` | `varchar(255) NOT NULL` |
| `attendance_date` | `date NOT NULL DEFAULT '2026-01-01'` |
| `period_no` | `int NOT NULL DEFAULT '1'` |
| `subject_id` | `bigint DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uk_attendance_student_date_period` (`student_id`,`attendance_date`,`period_no`)`
- `KEY `fk_attendance_faculty` (`faculty_id`)`
- `KEY `FK6rbdq2aqpc01xhtp5d65mi4a4` (`reg_no`)`
- `KEY `FKcjg1qkkmmy4dtktcdug457x4p` (`subject_id`)`
- `CONSTRAINT `fk_attendance_faculty` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`)`
- `CONSTRAINT `fk_attendance_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKcjg1qkkmmy4dtktcdug457x4p` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`)`

---

### 14. Table: `attendance_holiday`
* **Schema DDL Query File:** [`schemas/attendance_holiday.sql`](schemas/attendance_holiday.sql)
* **Data DML File:** [`data/attendance_holiday.sql`](data/attendance_holiday.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `holiday_date` | `date NOT NULL` |
| `holiday_name` | `varchar(255) NOT NULL` |
| `updated_at` | `datetime(6) DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`

---

### 15. Table: `attendance_records`
* **Schema DDL Query File:** [`schemas/attendance_records.sql`](schemas/attendance_records.sql)
* **Data DML File:** [`data/attendance_records.sql`](data/attendance_records.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `marked_at` | `datetime(6) NOT NULL` |
| `remarks` | `varchar(255) DEFAULT NULL` |
| `status` | `enum('ABSENT','PRESENT') NOT NULL` |
| `attendance_session_id` | `bigint NOT NULL` |
| `student_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uk_attendance_record` (`attendance_session_id`,`student_id`)`
- `KEY `FKb5ijilkgrgx66qn66iajdkyb9` (`student_id`)`
- `CONSTRAINT `FKb5ijilkgrgx66qn66iajdkyb9` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKbeajy0xxweanmk3g7aujtf5bj` FOREIGN KEY (`attendance_session_id`) REFERENCES `attendance_sessions` (`id`)`

---

### 16. Table: `attendance_sessions`
* **Schema DDL Query File:** [`schemas/attendance_sessions.sql`](schemas/attendance_sessions.sql)
* **Data DML File:** [`data/attendance_sessions.sql`](data/attendance_sessions.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `attendance_date` | `date NOT NULL` |
| `created_at` | `datetime(6) NOT NULL` |
| `period_number` | `int NOT NULL` |
| `academic_year_id` | `bigint NOT NULL` |
| `department_id` | `bigint NOT NULL` |
| `section_id` | `bigint DEFAULT NULL` |
| `teacher_id` | `bigint NOT NULL` |
| `year_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uk_attendance_session` (`attendance_date`,`period_number`,`department_id`,`section_id`,`year_id`)`
- `KEY `FK80kb2jo2jw76bvgg2vi7u00do` (`academic_year_id`)`
- `KEY `FK7qk3qm8p22rfnlqqm5buc3wt7` (`department_id`)`
- `KEY `FKpcs7hgdua629c9s4x702j0sp2` (`section_id`)`
- `KEY `FKpnjo169km7kmsfh5t60do9vyh` (`teacher_id`)`
- `KEY `FKbqim9btko5s07w467rtv8ms56` (`year_id`)`
- `CONSTRAINT `FK7qk3qm8p22rfnlqqm5buc3wt7` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)`
- `CONSTRAINT `FK80kb2jo2jw76bvgg2vi7u00do` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`)`
- `CONSTRAINT `FKbqim9btko5s07w467rtv8ms56` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`)`
- `CONSTRAINT `FKpcs7hgdua629c9s4x702j0sp2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)`
- `CONSTRAINT `FKpnjo169km7kmsfh5t60do9vyh` FOREIGN KEY (`teacher_id`) REFERENCES `faculty` (`id`)`

---

### 17. Table: `attendance_settings`
* **Schema DDL Query File:** [`schemas/attendance_settings.sql`](schemas/attendance_settings.sql)
* **Data DML File:** [`data/attendance_settings.sql`](data/attendance_settings.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `daily_engine_enabled` | `bit(1) DEFAULT NULL` |
| `daily_processing_time` | `time(6) DEFAULT NULL` |
| `full_day_penalty` | `int DEFAULT NULL` |
| `partial_day_penalty` | `int DEFAULT NULL` |
| `perfect_week_reward` | `int DEFAULT NULL` |
| `updated_at` | `datetime(6) DEFAULT NULL` |
| `week_end_day` | `enum('FRIDAY','MONDAY','SATURDAY','SUNDAY','THURSDAY','TUESDAY','WEDNESDAY') DEFAULT NULL` |
| `week_start_day` | `enum('FRIDAY','MONDAY','SATURDAY','SUNDAY','THURSDAY','TUESDAY','WEDNESDAY') DEFAULT NULL` |
| `weekly_engine_enabled` | `bit(1) DEFAULT NULL` |
| `weekly_processing_time` | `time(6) DEFAULT NULL` |
| `academic_year` | `enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL` |
| `daily_engine_status` | `varchar(20) DEFAULT NULL` |
| `last_daily_run` | `datetime(6) DEFAULT NULL` |
| `last_weekly_run` | `datetime(6) DEFAULT NULL` |
| `test_date` | `date DEFAULT NULL` |
| `test_mode_enabled` | `bit(1) DEFAULT NULL` |
| `test_time` | `time(6) DEFAULT NULL` |
| `weekly_engine_status` | `varchar(20) DEFAULT NULL` |
| `week_end_full_penalty` | `int DEFAULT NULL` |
| `week_end_partial_penalty` | `int DEFAULT NULL` |
| `week_start_full_penalty` | `int DEFAULT NULL` |
| `week_start_partial_penalty` | `int DEFAULT NULL` |
| `end_date` | `date DEFAULT NULL` |
| `start_date` | `date DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`

---

### 18. Table: `badge_requests`
* **Schema DDL Query File:** [`schemas/badge_requests.sql`](schemas/badge_requests.sql)
* **Data DML File:** [`data/badge_requests.sql`](data/badge_requests.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `remarks` | `text` |
| `requested_at` | `datetime(6) NOT NULL` |
| `reviewed_at` | `datetime(6) DEFAULT NULL` |
| `reviewed_by` | `varchar(100) DEFAULT NULL` |
| `status` | `varchar(20) NOT NULL` |
| `badge_id` | `bigint NOT NULL` |
| `department_id` | `bigint DEFAULT NULL` |
| `section_id` | `bigint DEFAULT NULL` |
| `student_id` | `bigint NOT NULL` |
| `proof_link` | `text` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKt3g2npskagiy54ujcokkt8krq` (`badge_id`)`
- `KEY `FK7wb98rahkhgh7bgbvqh5ka2iw` (`department_id`)`
- `KEY `FK22d5eg8y06gdhwx2avkhkqm1r` (`section_id`)`
- `KEY `FK4s80g104ewi5930vmn00pxyqe` (`student_id`)`
- `CONSTRAINT `FK22d5eg8y06gdhwx2avkhkqm1r` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)`
- `CONSTRAINT `FK4s80g104ewi5930vmn00pxyqe` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FK7wb98rahkhgh7bgbvqh5ka2iw` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)`
- `CONSTRAINT `FKt3g2npskagiy54ujcokkt8krq` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`)`

---

### 19. Table: `badges`
* **Schema DDL Query File:** [`schemas/badges.sql`](schemas/badges.sql)
* **Data DML File:** [`data/badges.sql`](data/badges.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `approval_authority` | `varchar(100) NOT NULL` |
| `description` | `text NOT NULL` |
| `icon_url` | `varchar(255) DEFAULT NULL` |
| `name` | `varchar(100) NOT NULL` |
| `rarity` | `varchar(50) NOT NULL` |
| `tier` | `varchar(50) NOT NULL` |
| `xp_required` | `int NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `UKcuebofvgkgi4g9fxde2kmpr1h` (`name`)`

---

### 20. Table: `captain_reward_settings`
* **Schema DDL Query File:** [`schemas/captain_reward_settings.sql`](schemas/captain_reward_settings.sql)
* **Data DML File:** [`data/captain_reward_settings.sql`](data/captain_reward_settings.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `academic_year` | `enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') NOT NULL` |
| `captain_xp` | `int DEFAULT NULL` |
| `engine_enabled` | `bit(1) DEFAULT NULL` |
| `execution_time` | `time(6) DEFAULT NULL` |
| `last_execution_date` | `datetime(6) DEFAULT NULL` |
| `vice_captain_xp` | `int DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `UKlc1wugw65da78hx2cajtqtx9w` (`academic_year`)`

---

### 21. Table: `custom_frequencies`
* **Schema DDL Query File:** [`schemas/custom_frequencies.sql`](schemas/custom_frequencies.sql)
* **Data DML File:** [`data/custom_frequencies.sql`](data/custom_frequencies.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `cap_type` | `varchar(20) NOT NULL` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `default_cap` | `int DEFAULT NULL` |
| `name` | `varchar(100) NOT NULL` |
| `updated_at` | `datetime(6) DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `UKdwvgfonmejvccbcv17imp17ws` (`name`)`

---

### 22. Table: `departments`
* **Schema DDL Query File:** [`schemas/departments.sql`](schemas/departments.sql)
* **Data DML File:** [`data/departments.sql`](data/departments.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `dept_code` | `varchar(20) NOT NULL` |
| `dept_name` | `varchar(180) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `code` | `varchar(10) DEFAULT NULL` |
| `description` | `varchar(255) DEFAULT NULL` |
| `name` | `varchar(100) NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `dept_code` (`dept_code`)`
- `UNIQUE KEY `dept_name` (`dept_name`)`
- `UNIQUE KEY `UKj6cwks7xecs5jov19ro8ge3qk` (`name`)`

---

### 23. Table: `discipline_logs`
* **Schema DDL Query File:** [`schemas/discipline_logs.sql`](schemas/discipline_logs.sql)
* **Data DML File:** [`data/discipline_logs.sql`](data/discipline_logs.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `student_id` | `bigint DEFAULT NULL` |
| `activity_id` | `bigint DEFAULT NULL` |
| `recorded_by` | `bigint DEFAULT NULL` |
| `points` | `int NOT NULL` |
| `reason` | `varchar(255) NOT NULL` |
| `remarks` | `text` |
| `incident_date` | `datetime NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `recorded_by_id` | `bigint DEFAULT NULL` |
| `subgroup_id` | `bigint DEFAULT NULL` |
| `reg_no` | `bigint DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `discipline_logs_ibfk_2` (`activity_id`)`
- `KEY `discipline_logs_ibfk_3` (`recorded_by`)`
- `KEY `idx_discipline_student_date` (`student_id`,`incident_date`)`
- `KEY `FKq1in7t2kuukg1xilj2i92bm2g` (`recorded_by_id`)`
- `KEY `FK8yqmdoonjp1pe3hdlueff75aq` (`subgroup_id`)`
- `KEY `FKa7a329hsf527p0l61x9pog303` (`reg_no`)`
- `CONSTRAINT `discipline_logs_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `discipline_logs_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`
- `CONSTRAINT `discipline_logs_ibfk_3` FOREIGN KEY (`recorded_by`) REFERENCES `faculty` (`id`)`
- `CONSTRAINT `FK8yqmdoonjp1pe3hdlueff75aq` FOREIGN KEY (`subgroup_id`) REFERENCES `activity_subgroups` (`id`)`
- `CONSTRAINT `FKa7a329hsf527p0l61x9pog303` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKq1in7t2kuukg1xilj2i92bm2g` FOREIGN KEY (`recorded_by_id`) REFERENCES `users` (`id`)`

---

### 24. Table: `faculty`
* **Schema DDL Query File:** [`schemas/faculty.sql`](schemas/faculty.sql)
* **Data DML File:** [`data/faculty.sql`](data/faculty.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `user_id` | `bigint NOT NULL` |
| `dept_id` | `bigint NOT NULL` |
| `section_id` | `bigint DEFAULT NULL` |
| `designation` | `varchar(100) NOT NULL` |
| `phone_no` | `varchar(15) NOT NULL` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uq_faculty_user` (`user_id`)`
- `KEY `fk_section_id` (`section_id`)`
- `KEY `faculty_ibfk_2` (`dept_id`)`
- `CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`)`
- `CONSTRAINT `fk_section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)`

---

### 25. Table: `genders`
* **Schema DDL Query File:** [`schemas/genders.sql`](schemas/genders.sql)
* **Data DML File:** [`data/genders.sql`](data/genders.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `gender_name` | `varchar(20) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `gender_name` (`gender_name`)`

---

### 26. Table: `group_deletion_audit_log`
* **Schema DDL Query File:** [`schemas/group_deletion_audit_log.sql`](schemas/group_deletion_audit_log.sql)
* **Data DML File:** [`data/group_deletion_audit_log.sql`](data/group_deletion_audit_log.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `deleted_by_role` | `varchar(100) NOT NULL` |
| `deleted_by_user_id` | `varchar(100) NOT NULL` |
| `reason` | `varchar(500) DEFAULT NULL` |
| `team_id` | `bigint NOT NULL` |
| `team_name` | `varchar(255) NOT NULL` |
| `timestamp` | `datetime(6) NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`

---

### 27. Table: `group_members`
* **Schema DDL Query File:** [`schemas/group_members.sql`](schemas/group_members.sql)
* **Data DML File:** [`data/group_members.sql`](data/group_members.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `is_captain` | `bit(1) NOT NULL` |
| `student_id` | `bigint NOT NULL` |
| `group_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uk_group_student` (`group_id`,`student_id`)`
- `KEY `FKriqbhx06deaevh9o051g4fo95` (`student_id`)`
- `CONSTRAINT `FK3au16gnt2ywalakrslk2vhxj9` FOREIGN KEY (`group_id`) REFERENCES `students_group` (`id`)`
- `CONSTRAINT `FKriqbhx06deaevh9o051g4fo95` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`

---

### 28. Table: `groups`
* **Schema DDL Query File:** [`schemas/groups.sql`](schemas/groups.sql)
* **Data DML File:** [`data/groups.sql`](data/groups.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `name` | `varchar(255) NOT NULL` |
| `size` | `int NOT NULL` |
| `captain_id` | `bigint DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `UKqcvyixaqvy6a1e3haycgy0nja` (`name`)`

---

### 29. Table: `levels`
* **Schema DDL Query File:** [`schemas/levels.sql`](schemas/levels.sql)
* **Data DML File:** [`data/levels.sql`](data/levels.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `key_unlocks` | `text` |
| `level_number` | `int NOT NULL` |
| `primary_objective` | `text` |
| `stage` | `int NOT NULL` |
| `title` | `varchar(100) NOT NULL` |
| `xp_max` | `int NOT NULL` |
| `xp_min` | `int NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `UKli0eoqvxan7eauih6cmj751i1` (`level_number`)`

---

### 30. Table: `mission_submissions`
* **Schema DDL Query File:** [`schemas/mission_submissions.sql`](schemas/mission_submissions.sql)
* **Data DML File:** [`data/mission_submissions.sql`](data/mission_submissions.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `evidence_url` | `varchar(500) DEFAULT NULL` |
| `status` | `varchar(20) DEFAULT NULL` |
| `submitted_at` | `datetime(6) DEFAULT NULL` |
| `week_number` | `int DEFAULT NULL` |
| `xp_awarded` | `int DEFAULT NULL` |
| `mission_id` | `bigint NOT NULL` |
| `student_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKdiekhr3skruynrind97ticy4k` (`mission_id`)`
- `KEY `FKdwdtk0amkvmdqxowtub3xymuo` (`student_id`)`
- `CONSTRAINT `FKdiekhr3skruynrind97ticy4k` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`id`)`
- `CONSTRAINT `FKdwdtk0amkvmdqxowtub3xymuo` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`

---

### 31. Table: `missions`
* **Schema DDL Query File:** [`schemas/missions.sql`](schemas/missions.sql)
* **Data DML File:** [`data/missions.sql`](data/missions.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `description` | `text` |
| `evidence_type` | `varchar(50) DEFAULT NULL` |
| `frequency` | `varchar(50) DEFAULT NULL` |
| `owner_role` | `varchar(50) DEFAULT NULL` |
| `stage` | `int NOT NULL` |
| `task_code` | `varchar(50) DEFAULT NULL` |
| `title` | `varchar(255) NOT NULL` |
| `xp_cap` | `int DEFAULT NULL` |
| `xp_reward` | `int DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `UKbx3v7rkjab75f45nwtrexl0jl` (`task_code`)`

---

### 32. Table: `notifications`
* **Schema DDL Query File:** [`schemas/notifications.sql`](schemas/notifications.sql)
* **Data DML File:** [`data/notifications.sql`](data/notifications.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `student_id` | `bigint DEFAULT NULL` |
| `title` | `varchar(255) NOT NULL` |
| `message` | `text NOT NULL` |
| `priority` | `enum('LOW','NORMAL','HIGH','URGENT') NOT NULL DEFAULT 'NORMAL'` |
| `reference_type` | `varchar(50) DEFAULT NULL` |
| `reference_id` | `bigint DEFAULT NULL` |
| `is_read` | `tinyint(1) NOT NULL DEFAULT '0'` |
| `read_at` | `datetime DEFAULT NULL` |
| `incident_date` | `datetime NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `reg_no` | `bigint DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `idx_notification_student_read` (`student_id`,`is_read`)`
- `KEY `idx_notification_date` (`student_id`,`incident_date`)`
- `KEY `FKoipcyap04c4x2f0vao2s5drpu` (`reg_no`)`
- `CONSTRAINT `FKoipcyap04c4x2f0vao2s5drpu` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`)`
- `CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`

---

### 33. Table: `penalty_requests`
* **Schema DDL Query File:** [`schemas/penalty_requests.sql`](schemas/penalty_requests.sql)
* **Data DML File:** [`data/penalty_requests.sql`](data/penalty_requests.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `activity_name` | `varchar(100) DEFAULT NULL` |
| `approved_at` | `datetime(6) DEFAULT NULL` |
| `approved_by` | `varchar(100) DEFAULT NULL` |
| `cc_name` | `varchar(100) DEFAULT NULL` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `penalty_xp` | `int NOT NULL` |
| `reason` | `text` |
| `rejected_reason` | `text` |
| `status` | `varchar(20) NOT NULL` |
| `teacher_name` | `varchar(100) DEFAULT NULL` |
| `updated_at` | `datetime(6) DEFAULT NULL` |
| `activity_id` | `bigint DEFAULT NULL` |
| `cc_id` | `bigint DEFAULT NULL` |
| `student_id` | `bigint NOT NULL` |
| `teacher_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKps5lgvixbub7xr7vn9rijrrvy` (`activity_id`)`
- `KEY `FK4ghjl43a5xu4738820pa1op0j` (`cc_id`)`
- `KEY `FKs86j9i2prb9a66hubxfn5pt67` (`student_id`)`
- `KEY `FKqphr3ibe5nsn2dq1j9kamrfku` (`teacher_id`)`
- `CONSTRAINT `FK4ghjl43a5xu4738820pa1op0j` FOREIGN KEY (`cc_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `FKps5lgvixbub7xr7vn9rijrrvy` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`
- `CONSTRAINT `FKqphr3ibe5nsn2dq1j9kamrfku` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `FKs86j9i2prb9a66hubxfn5pt67` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`

---

### 34. Table: `roles`
* **Schema DDL Query File:** [`schemas/roles.sql`](schemas/roles.sql)
* **Data DML File:** [`data/roles.sql`](data/roles.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `name` | `varchar(100) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `name` (`name`)`

---

### 35. Table: `section`
* **Schema DDL Query File:** [`schemas/section.sql`](schemas/section.sql)
* **Data DML File:** [`data/section.sql`](data/section.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `dept_id` | `bigint NOT NULL` |
| `section_name` | `varchar(30) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uq_department_section` (`dept_id`,`section_name`)`
- `CONSTRAINT `fk_section_department` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`)`

---

### 36. Table: `semesters`
* **Schema DDL Query File:** [`schemas/semesters.sql`](schemas/semesters.sql)
* **Data DML File:** [`data/semesters.sql`](data/semesters.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `semester_no` | `tinyint NOT NULL` |
| `semester_name` | `varchar(30) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `semester_no` (`semester_no`)`
- `UNIQUE KEY `uq_semester_name` (`semester_name`)`

---

### 37. Table: `sms_notifications`
* **Schema DDL Query File:** [`schemas/sms_notifications.sql`](schemas/sms_notifications.sql)
* **Data DML File:** [`data/sms_notifications.sql`](data/sms_notifications.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `created_at` | `datetime(6) NOT NULL` |
| `error_message` | `text` |
| `guardian_phone` | `varchar(15) NOT NULL` |
| `message` | `text NOT NULL` |
| `provider` | `varchar(50) NOT NULL` |
| `status` | `varchar(50) NOT NULL` |
| `student_id` | `bigint NOT NULL` |
| `twilio_sid` | `varchar(100) DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`

---

### 38. Table: `stage_activity_mappings`
* **Schema DDL Query File:** [`schemas/stage_activity_mappings.sql`](schemas/stage_activity_mappings.sql)
* **Data DML File:** [`data/stage_activity_mappings.sql`](data/stage_activity_mappings.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `activity_id` | `bigint NOT NULL` |
| `stage_id` | `bigint NOT NULL` |
| `display_order` | `int NOT NULL` |
| `subgroup_type` | `varchar(20) NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKop038fc85aolfs45a0dv8uod6` (`activity_id`)`
- `KEY `FK2dg4wbp42gll5gnoqq39fh6v` (`stage_id`)`
- `CONSTRAINT `FK2dg4wbp42gll5gnoqq39fh6v` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`)`
- `CONSTRAINT `FKop038fc85aolfs45a0dv8uod6` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`

---

### 39. Table: `stage_teams`
* **Schema DDL Query File:** [`schemas/stage_teams.sql`](schemas/stage_teams.sql)
* **Data DML File:** [`data/stage_teams.sql`](data/stage_teams.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `captain_id` | `bigint DEFAULT NULL` |
| `stage_id` | `bigint NOT NULL` |
| `team_id` | `bigint NOT NULL` |
| `vice_captain_id` | `bigint DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uk_stage_team` (`stage_id`,`team_id`)`
- `KEY `FKjn8oms5hngw5t7h4uq5q5vakp` (`captain_id`)`
- `KEY `FKhkmy7e8i9p3oj3ih17cf94ybk` (`team_id`)`
- `KEY `FKtoym937dpt8rd4k4088pal1ld` (`vice_captain_id`)`
- `CONSTRAINT `FK44hre9s69jf2plrw2bhmnhwgg` FOREIGN KEY (`stage_id`) REFERENCES `activity_stages` (`id`)`
- `CONSTRAINT `FKhkmy7e8i9p3oj3ih17cf94ybk` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)`
- `CONSTRAINT `FKjn8oms5hngw5t7h4uq5q5vakp` FOREIGN KEY (`captain_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKtoym937dpt8rd4k4088pal1ld` FOREIGN KEY (`vice_captain_id`) REFERENCES `students` (`id`)`

---

### 40. Table: `streaks`
* **Schema DDL Query File:** [`schemas/streaks.sql`](schemas/streaks.sql)
* **Data DML File:** [`data/streaks.sql`](data/streaks.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `current_streak` | `int NOT NULL` |
| `is_broken` | `bit(1) NOT NULL` |
| `last_updated` | `datetime(6) DEFAULT NULL` |
| `penalty_per_break` | `int NOT NULL` |
| `streak_type` | `varchar(50) NOT NULL` |
| `student_id` | `bigint NOT NULL` |
| `reg_no` | `varchar(255) NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKehg7pdbwrdqkiq17jnqowqwg5` (`student_id`)`
- `KEY `FKgs4huer1l3h459838yihayxqx` (`reg_no`)`
- `CONSTRAINT `FKehg7pdbwrdqkiq17jnqowqwg5` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`

---

### 41. Table: `student_activity_streaks`
* **Schema DDL Query File:** [`schemas/student_activity_streaks.sql`](schemas/student_activity_streaks.sql)
* **Data DML File:** [`data/student_activity_streaks.sql`](data/student_activity_streaks.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `current_streak` | `int NOT NULL` |
| `last_completed_date` | `date DEFAULT NULL` |
| `longest_streak` | `int NOT NULL` |
| `updated_at` | `datetime(6) DEFAULT NULL` |
| `activity_id` | `bigint NOT NULL` |
| `student_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uq_student_activity_streak` (`student_id`,`activity_id`)`
- `KEY `FKs157a0pqlp91rv6rx1oha2t1k` (`activity_id`)`
- `CONSTRAINT `FKpjweg58rirwvsqi281ic3kul5` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKs157a0pqlp91rv6rx1oha2t1k` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`

---

### 42. Table: `student_activity_xp`
* **Schema DDL Query File:** [`schemas/student_activity_xp.sql`](schemas/student_activity_xp.sql)
* **Data DML File:** [`data/student_activity_xp.sql`](data/student_activity_xp.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `awarded_at` | `datetime(6) NOT NULL` |
| `remarks` | `varchar(255) DEFAULT NULL` |
| `xp_awarded` | `int NOT NULL` |
| `activity_id` | `bigint NOT NULL` |
| `assignment_id` | `bigint NOT NULL` |
| `student_id` | `bigint NOT NULL` |
| `teacher_id` | `bigint NOT NULL` |
| `result` | `varchar(50) NOT NULL` |
| `stage_order` | `int DEFAULT '1'` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKsjhq1ffk9cbkch5bnvom9aypr` (`activity_id`)`
- `KEY `FK1qs9jd73r6b8jx0m251k34o06` (`assignment_id`)`
- `KEY `FKdr6722wmy4cm78xx6vrpdtil7` (`student_id`)`
- `KEY `FKqpniaf47k9cc8bmqmi4jkokt3` (`teacher_id`)`
- `CONSTRAINT `FK1qs9jd73r6b8jx0m251k34o06` FOREIGN KEY (`assignment_id`) REFERENCES `activity_assignments` (`id`)`
- `CONSTRAINT `FKdr6722wmy4cm78xx6vrpdtil7` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKqpniaf47k9cc8bmqmi4jkokt3` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `FKsjhq1ffk9cbkch5bnvom9aypr` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`

---

### 43. Table: `student_badges`
* **Schema DDL Query File:** [`schemas/student_badges.sql`](schemas/student_badges.sql)
* **Data DML File:** [`data/student_badges.sql`](data/student_badges.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `approved_by` | `varchar(100) DEFAULT NULL` |
| `awarded_at` | `datetime(6) DEFAULT NULL` |
| `evidence_url` | `text` |
| `status` | `varchar(50) NOT NULL` |
| `badge_id` | `bigint NOT NULL` |
| `student_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKdogjuytddp97f0p6ivt3r8ufp` (`badge_id`)`
- `KEY `FKtciahqu1w23ccrula5smx9i73` (`student_id`)`
- `CONSTRAINT `FKdogjuytddp97f0p6ivt3r8ufp` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`)`
- `CONSTRAINT `FKtciahqu1w23ccrula5smx9i73` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`

---

### 44. Table: `student_guardians`
* **Schema DDL Query File:** [`schemas/student_guardians.sql`](schemas/student_guardians.sql)
* **Data DML File:** [`data/student_guardians.sql`](data/student_guardians.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `student_id` | `bigint NOT NULL` |
| `guardian_name` | `varchar(150) NOT NULL` |
| `relationship` | `enum('FATHER','MOTHER','GUARDIAN','PARENT') NOT NULL` |
| `phone_no` | `varchar(15) NOT NULL` |
| `email` | `varchar(150) DEFAULT NULL` |
| `is_primary` | `tinyint(1) NOT NULL DEFAULT '1'` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `reg_no` | `varchar(50) NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `student_id` (`student_id`,`relationship`)`
- `UNIQUE KEY `reg_no` (`reg_no`,`relationship`)`
- `KEY `idx_guardian_student` (`student_id`)`
- `CONSTRAINT `fk_guardian_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE`

---

### 45. Table: `student_points_history`
* **Schema DDL Query File:** [`schemas/student_points_history.sql`](schemas/student_points_history.sql)
* **Data DML File:** [`data/student_points_history.sql`](data/student_points_history.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `student_id` | `bigint DEFAULT NULL` |
| `activity_id` | `bigint DEFAULT NULL` |
| `log_id` | `bigint DEFAULT NULL` |
| `points` | `int NOT NULL` |
| `new_score` | `int NOT NULL` |
| `new_streak` | `int NOT NULL` |
| `incident_date` | `datetime NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `reg_no` | `bigint DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `student_points_history_ibfk_2` (`activity_id`)`
- `KEY `student_points_history_ibfk_3` (`log_id`)`
- `KEY `idx_points_student_date` (`student_id`,`incident_date`)`
- `KEY `FK66b91ft72q8nboionnev395f1` (`reg_no`)`
- `CONSTRAINT `FK66b91ft72q8nboionnev395f1` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`)`
- `CONSTRAINT `student_points_history_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `student_points_history_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`
- `CONSTRAINT `student_points_history_ibfk_3` FOREIGN KEY (`log_id`) REFERENCES `discipline_logs` (`id`)`

---

### 46. Table: `students`
* **Schema DDL Query File:** [`schemas/students.sql`](schemas/students.sql)
* **Data DML File:** [`data/students.sql`](data/students.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `full_name` | `varchar(100) DEFAULT NULL` |
| `reg_no` | `varchar(50) NOT NULL` |
| `spr_no` | `varchar(50) DEFAULT NULL` |
| `department_id` | `bigint NOT NULL` |
| `section_id` | `bigint DEFAULT NULL` |
| `user_id` | `bigint DEFAULT NULL` |
| `DOB` | `date DEFAULT NULL` |
| `gender_id` | `bigint NOT NULL` |
| `phone_no` | `varchar(15) NOT NULL` |
| `academic_year_id` | `bigint NOT NULL` |
| `year_id` | `bigint NOT NULL` |
| `semester_id` | `bigint NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `academic_year` | `varchar(20) DEFAULT NULL` |
| `active` | `bit(1) NOT NULL` |
| `address` | `varchar(255) DEFAULT NULL` |
| `date_of_birth` | `date DEFAULT NULL` |
| `email` | `varchar(150) NOT NULL` |
| `gender` | `varchar(10) DEFAULT NULL` |
| `password` | `varchar(255) NOT NULL` |
| `phone` | `varchar(20) DEFAULT NULL` |
| `score` | `int NOT NULL` |
| `semester` | `varchar(20) DEFAULT NULL` |
| `year` | `varchar(10) DEFAULT NULL` |
| `current_stage` | `int NOT NULL` |
| `stage` | `int DEFAULT '1'` |
| `total_xp` | `int NOT NULL` |
| `team_id` | `bigint DEFAULT NULL` |
| `group_id` | `bigint DEFAULT NULL` |
| `section` | `varchar(50) DEFAULT NULL` |
| `group_xp` | `int NOT NULL` |
| `individual_xp` | `int NOT NULL` |
| `must_xp` | `int NOT NULL` |
| `is_captain` | `bit(1) NOT NULL` |
| `promotion_order` | `int DEFAULT NULL` |
| `promotion_timestamp` | `datetime(6) DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `UKe2rndfrsx22acpq2ty1caeuyw` (`email`)`
- `UNIQUE KEY `reg_no` (`reg_no`)`
- `UNIQUE KEY `uk_reg_no` (`reg_no`)`
- `UNIQUE KEY `spr_no` (`spr_no`)`
- `KEY `fk_students_gender` (`gender_id`)`
- `KEY `idx_students_academic_year` (`academic_year_id`)`
- `KEY `idx_students_year` (`year_id`)`
- `KEY `idx_students_semester` (`semester_id`)`
- `KEY `fk_students_user` (`user_id`)`
- `KEY `students_ibfk_1` (`department_id`)`
- `KEY `fk_students_section` (`section_id`)`
- `KEY `FKjgyxg2x86o4me9gr70elinthr` (`team_id`)`
- `KEY `FKfob3k6rgxnlssnrcy55yuxfkl` (`group_id`)`
- `CONSTRAINT `fk_students_academic_year` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`)`
- `CONSTRAINT `fk_students_gender` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE`
- `CONSTRAINT `fk_students_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)`
- `CONSTRAINT `fk_students_semester` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`)`
- `CONSTRAINT `fk_students_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `fk_students_year` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`)`
- `CONSTRAINT `FKfob3k6rgxnlssnrcy55yuxfkl` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`)`
- `CONSTRAINT `FKjgyxg2x86o4me9gr70elinthr` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)`
- `CONSTRAINT `students_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)`

---

### 47. Table: `students_group`
* **Schema DDL Query File:** [`schemas/students_group.sql`](schemas/students_group.sql)
* **Data DML File:** [`data/students_group.sql`](data/students_group.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `dept_id` | `bigint NOT NULL` |
| `name` | `varchar(100) NOT NULL` |
| `max_size` | `int NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uq_students_group` (`dept_id`,`name`)`
- `UNIQUE KEY `uq_students_team` (`dept_id`,`name`)`
- `CONSTRAINT `FKj47s3n0afrqp3i2jcxsukp2ha` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`)`
- `CONSTRAINT `chk_group_size` CHECK ((`max_size` > 0))`

---

### 48. Table: `sub_roles`
* **Schema DDL Query File:** [`schemas/sub_roles.sql`](schemas/sub_roles.sql)
* **Data DML File:** [`data/sub_roles.sql`](data/sub_roles.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `role_id` | `bigint DEFAULT NULL` |
| `name` | `varchar(100) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `sub_roles_ibfk_1` (`role_id`)`
- `CONSTRAINT `sub_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)`

---

### 49. Table: `subjects`
* **Schema DDL Query File:** [`schemas/subjects.sql`](schemas/subjects.sql)
* **Data DML File:** [`data/subjects.sql`](data/subjects.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `dept_id` | `bigint DEFAULT NULL` |
| `sub_code` | `varchar(20) NOT NULL` |
| `sub_name` | `varchar(180) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |
| `name` | `varchar(100) NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `UKaodt3utnw0lsov4k9ta88dbpr` (`name`)`
- `UNIQUE KEY `uq_subject_code` (`dept_id`,`sub_code`)`
- `UNIQUE KEY `uq_subject_name` (`dept_id`,`sub_name`)`
- `CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`)`

---

### 50. Table: `team_members`
* **Schema DDL Query File:** [`schemas/team_members.sql`](schemas/team_members.sql)
* **Data DML File:** [`data/team_members.sql`](data/team_members.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `student_id` | `bigint NOT NULL` |
| `is_captain` | `tinyint(1) NOT NULL DEFAULT '0'` |
| `team_id` | `bigint NOT NULL` |
| `reg_no` | `bigint NOT NULL` |
| `role` | `enum('CAPTAIN','MEMBER','VICE_CAPTAIN') NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `uk_team_student` (`team_id`,`student_id`)`
- `KEY `student_id` (`student_id`)`
- `KEY `FKon9ryy73ym5urs24gsm2dre9w` (`reg_no`)`
- `CONSTRAINT `FKon9ryy73ym5urs24gsm2dre9w` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKtgca08el3ofisywcf11f0f76t` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)`
- `CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`

---

### 51. Table: `team_removal_requests`
* **Schema DDL Query File:** [`schemas/team_removal_requests.sql`](schemas/team_removal_requests.sql)
* **Data DML File:** [`data/team_removal_requests.sql`](data/team_removal_requests.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `reason` | `varchar(500) NOT NULL` |
| `status` | `varchar(20) NOT NULL` |
| `captain_id` | `bigint NOT NULL` |
| `student_id` | `bigint NOT NULL` |
| `team_id` | `bigint NOT NULL` |
| `reg_no` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FK6ci2e9rcg55cn6aju5o1e2fiu` (`captain_id`)`
- `KEY `FK3plqqp3ya6i524272qwjsdjhk` (`student_id`)`
- `KEY `FK8siu2o6r727x6co4ahugdf3wo` (`team_id`)`
- `KEY `FKgpv2t0mhgoinelie9tqoi38ic` (`reg_no`)`
- `CONSTRAINT `FK3plqqp3ya6i524272qwjsdjhk` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FK6ci2e9rcg55cn6aju5o1e2fiu` FOREIGN KEY (`captain_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FK8siu2o6r727x6co4ahugdf3wo` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)`
- `CONSTRAINT `FKgpv2t0mhgoinelie9tqoi38ic` FOREIGN KEY (`reg_no`) REFERENCES `students` (`id`)`

---

### 52. Table: `teams`
* **Schema DDL Query File:** [`schemas/teams.sql`](schemas/teams.sql)
* **Data DML File:** [`data/teams.sql`](data/teams.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `name` | `varchar(255) NOT NULL` |
| `size` | `int NOT NULL` |
| `captain_id` | `bigint DEFAULT NULL` |
| `assignment_id` | `bigint DEFAULT NULL` |
| `year` | `varchar(255) DEFAULT NULL` |
| `created_by_id` | `bigint DEFAULT NULL` |
| `department_id` | `bigint DEFAULT NULL` |
| `section_id` | `bigint DEFAULT NULL` |
| `vice_captain_id` | `bigint DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `UKqcvyixaqvy6a1e3haycgy0nja` (`name`)`
- `UNIQUE KEY `uk_team_name_assignment` (`name`,`assignment_id`)`
- `UNIQUE KEY `uk_team_name_class` (`name`,`department_id`,`year`,`section_id`)`
- `KEY `FKc59hkkmfd3fb1w4dgewg3lfh1` (`captain_id`)`
- `KEY `FKi382pmjr988ro4g3t2c08h1hd` (`assignment_id`)`
- `KEY `FKcq9jk9qh4ox827y0d161rabce` (`created_by_id`)`
- `KEY `FKkteyamwleykiqb2nv0cu2fc3r` (`department_id`)`
- `KEY `FK938r0tivp59n0bmou7dhv6v56` (`section_id`)`
- `KEY `FKfx82rxx8m5xjjxhsy6tmhhbke` (`vice_captain_id`)`
- `CONSTRAINT `FK938r0tivp59n0bmou7dhv6v56` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)`
- `CONSTRAINT `FKc59hkkmfd3fb1w4dgewg3lfh1` FOREIGN KEY (`captain_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKcq9jk9qh4ox827y0d161rabce` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `FKfx82rxx8m5xjjxhsy6tmhhbke` FOREIGN KEY (`vice_captain_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKi382pmjr988ro4g3t2c08h1hd` FOREIGN KEY (`assignment_id`) REFERENCES `activity_assignments` (`id`)`
- `CONSTRAINT `FKkteyamwleykiqb2nv0cu2fc3r` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)`

---

### 53. Table: `timetable`
* **Schema DDL Query File:** [`schemas/timetable.sql`](schemas/timetable.sql)
* **Data DML File:** [`data/timetable.sql`](data/timetable.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `active` | `bit(1) NOT NULL` |
| `created_at` | `datetime(6) DEFAULT NULL` |
| `updated_at` | `datetime(6) DEFAULT NULL` |
| `academic_year_id` | `bigint NOT NULL` |
| `created_by_id` | `bigint NOT NULL` |
| `department_id` | `bigint NOT NULL` |
| `section_id` | `bigint NOT NULL` |
| `semester_id` | `bigint NOT NULL` |
| `year_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FK5edkxibmo2r3eeegkfvdp24o6` (`academic_year_id`)`
- `KEY `FKbf0x6ki3ym112b24shaf1ia97` (`created_by_id`)`
- `KEY `FKe7pho8bicl9ky0w6l3hepo4bc` (`department_id`)`
- `KEY `FKog52wc8yod6g56621vygalt2f` (`section_id`)`
- `KEY `FKlwqgafdl0hrmeg548uarkrbvi` (`semester_id`)`
- `KEY `FKb7eoap2ph5ywqf8tn5tw25w82` (`year_id`)`
- `CONSTRAINT `FK5edkxibmo2r3eeegkfvdp24o6` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`)`
- `CONSTRAINT `FKb7eoap2ph5ywqf8tn5tw25w82` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`)`
- `CONSTRAINT `FKbf0x6ki3ym112b24shaf1ia97` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `FKe7pho8bicl9ky0w6l3hepo4bc` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)`
- `CONSTRAINT `FKlwqgafdl0hrmeg548uarkrbvi` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`)`
- `CONSTRAINT `FKog52wc8yod6g56621vygalt2f` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)`

---

### 54. Table: `timetable_entries`
* **Schema DDL Query File:** [`schemas/timetable_entries.sql`](schemas/timetable_entries.sql)
* **Data DML File:** [`data/timetable_entries.sql`](data/timetable_entries.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `day` | `varchar(30) NOT NULL` |
| `end_time` | `varchar(15) NOT NULL` |
| `period_number` | `int NOT NULL` |
| `start_time` | `varchar(15) NOT NULL` |
| `faculty_id` | `bigint NOT NULL` |
| `subject_id` | `bigint NOT NULL` |
| `timetable_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FKj61690mwftwguyahrgmv692ku` (`faculty_id`)`
- `KEY `FKi8jv4d492h85hygx2v35aytjh` (`subject_id`)`
- `KEY `FKfoi9lt7rgy5hb73bwva21u6ln` (`timetable_id`)`
- `CONSTRAINT `FKfoi9lt7rgy5hb73bwva21u6ln` FOREIGN KEY (`timetable_id`) REFERENCES `timetable` (`id`)`
- `CONSTRAINT `FKi8jv4d492h85hygx2v35aytjh` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`)`
- `CONSTRAINT `FKj61690mwftwguyahrgmv692ku` FOREIGN KEY (`faculty_id`) REFERENCES `users` (`id`)`

---

### 55. Table: `user_roles`
* **Schema DDL Query File:** [`schemas/user_roles.sql`](schemas/user_roles.sql)
* **Data DML File:** [`data/user_roles.sql`](data/user_roles.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `user_id` | `bigint NOT NULL` |
| `role_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`user_id`,`role_id`)`
- `KEY `user_roles_ibfk_2` (`role_id`)`
- `CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)`

---

### 56. Table: `user_sub_roles`
* **Schema DDL Query File:** [`schemas/user_sub_roles.sql`](schemas/user_sub_roles.sql)
* **Data DML File:** [`data/user_sub_roles.sql`](data/user_sub_roles.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `user_id` | `bigint NOT NULL` |
| `sub_role_id` | `bigint NOT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`user_id`,`sub_role_id`)`
- `KEY `user_sub_roles_ibfk_2` (`sub_role_id`)`
- `CONSTRAINT `user_sub_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)`
- `CONSTRAINT `user_sub_roles_ibfk_2` FOREIGN KEY (`sub_role_id`) REFERENCES `sub_roles` (`id`)`

---

### 57. Table: `users`
* **Schema DDL Query File:** [`schemas/users.sql`](schemas/users.sql)
* **Data DML File:** [`data/users.sql`](data/users.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `username` | `varchar(100) DEFAULT NULL` |
| `email` | `varchar(150) DEFAULT NULL` |
| `password` | `varchar(150) NOT NULL` |
| `phone` | `varchar(15) DEFAULT NULL` |
| `updated_at` | `datetime DEFAULT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `active` | `bit(1) NOT NULL` |
| `full_name` | `varchar(100) NOT NULL` |
| `year` | `varchar(10) DEFAULT NULL` |
| `department_id` | `bigint DEFAULT NULL` |
| `section_id` | `bigint DEFAULT NULL` |
| `section` | `varchar(50) DEFAULT NULL` |
| `assigned_academic_year` | `enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL` |
| `academic_year` | `enum('FIRST_YEAR','FOURTH_YEAR','SECOND_YEAR','THIRD_YEAR') DEFAULT NULL` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `username` (`username`)`
- `UNIQUE KEY `email` (`email`)`
- `KEY `FKsbg59w8q63i0oo53rlgvlcnjq` (`department_id`)`
- `KEY `fk_user_section` (`section_id`)`
- `CONSTRAINT `fk_user_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)`
- `CONSTRAINT `FKsbg59w8q63i0oo53rlgvlcnjq` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)`

---

### 58. Table: `xp_transactions`
* **Schema DDL Query File:** [`schemas/xp_transactions.sql`](schemas/xp_transactions.sql)
* **Data DML File:** [`data/xp_transactions.sql`](data/xp_transactions.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `activity_name` | `varchar(255) NOT NULL` |
| `approved_by` | `varchar(100) DEFAULT NULL` |
| `cap_applied` | `bit(1) NOT NULL` |
| `category` | `varchar(50) NOT NULL` |
| `evidence_url` | `varchar(500) DEFAULT NULL` |
| `is_penalty` | `bit(1) NOT NULL` |
| `status` | `varchar(20) NOT NULL` |
| `submitted_at` | `datetime(6) NOT NULL` |
| `xp_points` | `int NOT NULL` |
| `student_id` | `bigint NOT NULL` |
| `activity_id` | `bigint DEFAULT NULL` |
| `stage_order` | `int DEFAULT '1'` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `KEY `FK1qh1hd5r941kikty3go7isxj9` (`student_id`)`
- `KEY `FKgs7fmfhhyews0ls3yurpvbsgh` (`activity_id`)`
- `CONSTRAINT `FK1qh1hd5r941kikty3go7isxj9` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)`
- `CONSTRAINT `FKgs7fmfhhyews0ls3yurpvbsgh` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)`

---

### 59. Table: `years`
* **Schema DDL Query File:** [`schemas/years.sql`](schemas/years.sql)
* **Data DML File:** [`data/years.sql`](data/years.sql)

| Column Name | Data Type & Constraints |
| :--- | :--- |
| `id` | `bigint NOT NULL AUTO_INCREMENT` |
| `year_no` | `tinyint NOT NULL` |
| `year_name` | `varchar(30) NOT NULL` |
| `created_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP` |
| `updated_at` | `timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` |

**Keys & Constraints:**
- `PRIMARY KEY (`id`)`
- `UNIQUE KEY `year_no` (`year_no`)`
- `UNIQUE KEY `uq_year_name` (`year_name`)`

---


## 🛠️ How to Import & Query database Schemas

### 1. Import Full Database Schema Only (No Data)
```bash
mysql -u root -p spdms_lab < 00_ALL_TABLE_SCHEMAS.sql
```

### 2. Import Full Database Backup (Schema + Data)
```bash
mysql -u root -p spdms_lab < Dump20260806.sql
```

### 3. Import Specific Table Schema (e.g., `users` table)
```bash
mysql -u root -p spdms_lab < schemas/users.sql
```

---

*Documentation auto-generated and verified for MySQL 8.0 Engine.*
