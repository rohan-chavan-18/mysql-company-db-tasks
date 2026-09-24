# 📄 README.md — Task 1: Company Database & DDL/DML Fundamentals

Welcome to the documentation for **Task 1** of the SQL training repository. This module covers core database creation, table management, data manipulation, structural alterations, and foundational SQL querying.

---

## 📋 Project Overview

Task 1 serves as the foundational base of the internship project, implementing essential SQL commands across a structured `company_db` schema. It transitions from basic database setup to advanced data modifications and structural changes.

---

## 🛠️ Key Operations & Tasks Covered

### 1. Database & Table Setup (Tasks 1–5)
* Created and selected the `company_db` database.
* Designed the `employees` primary table with typed columns (`employee_id`, `employee_name`, `department`, `salary`, `city`, `joining_date`, `status`).
* Inspected table architecture using `DESC` and viewed available database tables via `SHOW TABLES`.

### 2. Data Insertion & Retrieval (Tasks 6–27)
* Populated the `employees` table with initial employee records.
* Executed basic and filtered `SELECT` queries targeting specific columns, cities (`Pune`, `Mumbai`), departments (`Development`, `Testing`), employment statuses (`Active`, `Inactive`), and salary ranges.

### 3. Logical Conditions & Updates (Tasks 28–38)
* Applied multi-condition logic (`AND`, `OR`) for targeted filtering.
* Performed `UPDATE` statements to modify employee salaries, active statuses, cities, and department assignments.
* Implemented incremental salary logic (e.g., raises by fixed amounts).

### 4. Record Deletion & Table Modifications (Tasks 40–50)
* Cleared specific employee entries using `DELETE` clauses based on ID, name, status, and salary thresholds.
* Altered table structures using `ALTER TABLE` to add columns (`email`, `mobile`, `experience`), modify data types, rename columns (`employee_name` to `name`), and drop redundant columns.

### 5. Multi-Table Management & Cleanup (Tasks 51–60)
* Created a secondary `departments` table and performed insertions, updates, and deletions.
* Practiced advanced structural commands including `RENAME TABLE`, `TRUNCATE TABLE`, and `DROP TABLE`.

---

## 💻 Sample SQL Script Execution

```sql
-- Create and use database
CREATE DATABASE company_db;
USE company_db;

-- Filter active employees in Pune
SELECT * FROM employees WHERE city = 'Pune' AND status = 'Active';

-- Update salary increment for testing department
UPDATE employees SET salary = salary + 2000 WHERE department = 'Testing';
