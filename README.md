# PragatiX Database SQL Dump (`spdms_lab`)

This repository contains the complete MySQL database dump, schema definitions, and individual table query scripts for the **PragatiX / SPDMS Lab** database exported on **August 6, 2026**.

---

## 📌 Database Overview

* **Database Name:** `spdms_lab`
* **Database Version:** MySQL 8.0.46
* **Total Tables:** 59 Tables
* **Character Set:** `utf8mb4` (Collation: `utf8mb4_0900_ai_ci`)

---

## 📁 Repository Structure

```
├── Dump20260806.sql          # Complete database backup (Schema + Data in 1 file)
├── 00_ALL_TABLE_SCHEMAS.sql  # Full database DDL (CREATE TABLE scripts only)
├── 00_ALL_TABLE_DATA.sql     # Full database DML (INSERT INTO records only)
├── tables/                   # Directory containing 59 individual table .sql files
│   ├── users.sql
│   ├── students.sql
│   ├── activities.sql
│   ├── attendance.sql
│   └── ... (all 59 tables)
└── README.md                 # Database documentation & table index
```

---

## 📊 Complete Table Inventory & Modules

The 59 tables in the `spdms_lab` database are organized into the following functional modules:

### 1. 👤 User Management & Authentication
* **`users`**: System user credentials, email, password hashes, and account status.
* **`roles`**: System roles (e.g., Super Admin, Admin, Faculty, Student).
* **`sub_roles`**: Granular sub-roles for fine-grained permissions.
* **`user_roles`**: Mapping between users and their primary roles.
* **`user_sub_roles`**: Mapping between users and assigned sub-roles.
* **`students`**: Detailed student profile records, register numbers, department, and section mappings.
* **`student_guardians`**: Guardian and parent contact details for students.
* **`faculty`**: Faculty member profiles, employee IDs, and department assignments.
* **`genders`**: Master lookup table for gender options.

### 2. 🎓 Academic Structure & Timetable
* **`academic_years`**: Master academic calendar years.
* **`academic_month`**: Academic month definitions for tracking.
* **`academic_week`**: Academic week schedules and boundaries.
* **`academic_holiday`**: Academic holiday calendar.
* **`alternate_working_day`**: Configuration for compensatory/alternate working days.
* **`departments`**: Academic departments (e.g., CSE, ECE, MECH, CIVIL).
* **`semesters`**: Academic semester records (Sem 1 to Sem 8).
* **`section`**: Section divisions within academic classes.
* **`years`**: Student year levels (1st Year, 2nd Year, 3rd Year, 4th Year).
* **`subjects`**: Course subjects and curriculum details.
* **`timetable`**: Master timetable schedules.
* **`timetable_entries`**: Specific period, slot, subject, and teacher assignments.

### 3. ⚡ Activities & Gamification System
* **`activities`**: Master list of extracurricular/co-curricular activities.
* **`activity_categories`**: Classification categories for activities.
* **`activity_subgroups`**: Subgroup groupings for activity selection.
* **`activity_stages`**: Stage progressions for sequential activities.
* **`activity_stage_mappings`**: Mapping linking activities to specific stages.
* **`activity_assignments`**: Activity assignments allocated to students or groups.
* **`activity_completion_requests`**: Submissions by students requesting activity completion approval.
* **`stage_activity_mappings`**: Extended stage-to-activity relational mappings.
* **`stage_teams`**: Team mappings assigned to specific activity stages.
* **`streaks`**: User participation streak tracking.
* **`student_activity_streaks`**: Active activity streak logs per student.
* **`student_activity_xp`**: Accumulated Experience Points (XP) per student per activity.
* **`xp_transactions`**: Detailed ledger of XP gains, losses, and awards.
* **`levels`**: Gamification levels based on XP thresholds.
* **`captain_reward_settings`**: Reward multipliers and settings for team captains.

### 4. 🏆 Badges & Missions
* **`badges`**: Achievement badge definitions, icons, and criteria.
* **`badge_requests`**: Student applications for badge claims.
* **`student_badges`**: Badges awarded to students.
* **`missions`**: Challenges and mission objectives for students.
* **`mission_submissions`**: Student proof/submissions for assigned missions.

### 5. 📅 Attendance & Discipline Tracking
* **`attendance`**: Daily overall attendance records.
* **`attendance_records`**: Detailed period-by-period student attendance logs.
* **`attendance_sessions`**: Active attendance session instances.
* **`attendance_settings`**: Configuration for attendance time windows and thresholds.
* **`attendance_holiday`**: Days excluded from attendance requirements.
* **`discipline_logs`**: Conduct, disciplinary incidents, and violation logs.
* **`penalty_requests`**: Disciplinary penalty and point deduction requests.

### 6. 👥 Groups & Team Management
* **`groups`**: Student groups for projects and activities.
* **`group_members`**: Membership mapping for student groups.
* **`students_group`**: Additional group categorization for students.
* **`group_deletion_audit_log`**: Historical audit log of deleted groups.
* **`teams`**: Project and competition teams.
* **`team_members`**: Student team rosters.
* **`team_removal_requests`**: Requests to remove or transfer team members.
* **`custom_frequencies`**: Recurrence rules for custom group/activity scheduling.

### 7. 🔔 Notifications & Communication
* **`notifications`**: In-app notifications for users.
* **`sms_notifications`**: Log of outgoing SMS alerts to students and guardians.

---

## 🛠️ How to Restore the Database

### Option 1: Full Restore via Command Line
```bash
# 1. Create target database
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS spdms_lab;"

# 2. Import complete dump
mysql -u root -p spdms_lab < Dump20260806.sql
```

### Option 2: Restore Schema Only (No Data)
```bash
mysql -u root -p spdms_lab < 00_ALL_TABLE_SCHEMAS.sql
```

### Option 3: Restore Data Only
```bash
mysql -u root -p spdms_lab < 00_ALL_TABLE_DATA.sql
```

### Option 4: Restore via MySQL Workbench
1. Open **MySQL Workbench** and connect to your database server.
2. Go to **Server** -> **Data Import**.
3. Select **Import from Self-Contained File** and browse to `Dump20260806.sql`.
4. Set Default Target Schema to `spdms_lab`.
5. Click **Start Import**.
