# 📋 Employee Management System — 60 Practical Tasks

This document contains the complete list of 60 industrial SQL tasks covering Core Data Definition Language (DDL) and Data Manipulation Language (DML) operations on the `company_db` database.

---

## Part A: Database & Table Creation

* **Task 1:** Create a database named `company_db`.
* **Task 2:** Use/select the `company_db` database.
* **Task 3:** Create a table named `employees` with columns: `employee_id` (INT PRIMARY KEY), `employee_name` (VARCHAR(100)), `department` (VARCHAR(50)), `salary` (DECIMAL(10,2)), `city` (VARCHAR(50)), `joining_date` (DATE), and `status` (VARCHAR(20)).
* **Task 4:** Display the structure of the `employees` table.
* **Task 5:** Display all tables available inside `company_db`.

---

## Part B: Data Insertion (INSERT)

* **Task 6:** Insert record: `101, Rahul Patil, Development, 45000, Pune, 2026-01-10, Active`.
* **Task 7:** Insert record: `102, Priya Sharma, Testing, 38000, Mumbai, 2026-02-15, Active`.
* **Task 8:** Insert record: `103, Amit Joshi, Development, 52000, Pune, 2025-12-05, Active`.
* **Task 9:** Insert record: `104, Sneha Kulkarni, HR, 35000, Nashik, 2026-03-20, Active`.
* **Task 10:** Insert record: `105, Rohan Deshmukh, Support, 30000, Mumbai, 2026-04-01, Inactive`.
* **Task 11:** Insert record: `106, Anjali More, Testing, 42000, Pune, 2026-05-12, Active`.

---

## Part C: Basic Selection & Filtering (SELECT & WHERE)

* **Task 12:** Display all records from `employees`.
* **Task 13:** Display only `employee_name`.
* **Task 14:** Display `employee_name` and `salary`.
* **Task 15:** Display `employee_name`, `department`, and `city`.
* **Task 16:** Display employees from Pune.
* **Task 17:** Display employees from Mumbai.
* **Task 18:** Display Development department employees.
* **Task 19:** Display Testing department employees.
* **Task 20:** Display only Active employees.
* **Task 21:** Display only Inactive employees.
* **Task 22:** Display the employee whose `employee_id` = 103.
* **Task 23:** Display the employee whose name is Priya Sharma.
* **Task 24:** Display employees whose salary is greater than 40000.
* **Task 25:** Display employees whose salary is less than 40000.
* **Task 26:** Display employees whose salary is equal to 35000.
* **Task 27:** Display employees whose salary is greater than or equal to 42000.
* **Task 28:** Display Pune employees whose status is Active.
* **Task 29:** Display Development employees whose salary is greater than 45000.
* **Task 30:** Display employees from Pune or Mumbai.

---

## Part D: Data Modification (UPDATE)

* **Task 31:** Update Rahul Patil's salary from 45000 to 48000.
* **Task 32:** Update Rohan Deshmukh's status from Inactive to Active.
* **Task 33:** Update Sneha Kulkarni's city from Nashik to Pune.
* **Task 34:** Update Priya Sharma's department from Testing to Development.
* **Task 35:** Update employee 106 salary to 45000.
* **Task 36:** Increase salary of employee 103 by 3000.
* **Task 37:** Increase salary of all Testing employees by 2000.
* **Task 38:** Change all employees from Mumbai to Mumbai Branch in the city column.

---

## Part E: Data Deletion (DELETE)

* **Task 39:** Delete the employee with `employee_id` = 105.
* **Task 40:** Delete the employee named Rohan Deshmukh.
* **Task 41:** Delete all employees whose status is Inactive.
* **Task 42:** Delete employees whose salary is less than 30000.
* **Task 43:** Delete the employee with `employee_id` = 104.

---

## Part F: Altering Table Structure (ALTER TABLE)

* **Task 44:** Add a new column: `email VARCHAR(100)`.
* **Task 45:** Add a new column: `mobile VARCHAR(15)`.
* **Task 46:** Change the size of city to `VARCHAR(100)`.
* **Task 47:** Rename column `employee_name` to `name`.
* **Task 48:** Delete the `mobile` column.
* **Task 49:** Add a column: `experience INT`.
* **Task 50:** Update experience for one employee.

---

## Part G: Table Lifecycle & Secondary DDL

* **Task 51:** Create another table named `departments` (`department_id INT PRIMARY KEY`, `department_name VARCHAR(100)`, `location VARCHAR(100)`).
* **Task 52:** Insert 3 department records.
* **Task 53:** Display all department records.
* **Task 54:** Update one department location.
* **Task 55:** Delete one department record.
* **Task 56:** Rename `departments` table to `company_departments`.
* **Task 57:** Display the structure of `company_departments`.
* **Task 58:** Remove all records from `company_departments` while keeping the table structure (`TRUNCATE`).
* **Task 59:** Delete the `company_departments` table completely (`DROP TABLE`).
* **Task 60:** Display all remaining tables in the database.
