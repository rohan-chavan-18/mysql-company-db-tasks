# 📋 Employee Management System — 60 Practical Tasks

This document contains the complete list of 60 industrial SQL tasks covering Core Data Definition Language (DDL) and Data Manipulation Language (DML) operations on the `company_db` database[cite: 3].

---

## Part A: Database & Table Creation

* **Task 1:** Create a database named `company_db`[cite: 3].
* **Task 2:** Use/select the `company_db` database[cite: 3].
* **Task 3:** Create a table named `employees` with columns: `employee_id` (INT PRIMARY KEY), `employee_name` (VARCHAR(100)), `department` (VARCHAR(50)), `salary` (DECIMAL(10,2)), `city` (VARCHAR(50)), `joining_date` (DATE), and `status` (VARCHAR(20))[cite: 3].
* **Task 4:** Display the structure of the `employees` table[cite: 3].
* **Task 5:** Display all tables available inside `company_db`[cite: 3].

---

## Part B: Data Insertion (INSERT)

* **Task 6:** Insert record: `101, Rahul Patil, Development, 45000, Pune, 2026-01-10, Active`[cite: 3].
* **Task 7:** Insert record: `102, Priya Sharma, Testing, 38000, Mumbai, 2026-02-15, Active`[cite: 3].
* **Task 8:** Insert record: `103, Amit Joshi, Development, 52000, Pune, 2025-12-05, Active`[cite: 3].
* **Task 9:** Insert record: `104, Sneha Kulkarni, HR, 35000, Nashik, 2026-03-20, Active`[cite: 3].
* **Task 10:** Insert record: `105, Rohan Deshmukh, Support, 30000, Mumbai, 2026-04-01, Inactive`[cite: 3].
* **Task 11:** Insert record: `106, Anjali More, Testing, 42000, Pune, 2026-05-12, Active`[cite: 3].

---

## Part C: Basic Selection & Filtering (SELECT & WHERE)

* **Task 12:** Display all records from `employees`[cite: 3].
* **Task 13:** Display only `employee_name`[cite: 3].
* **Task 14:** Display `employee_name` and `salary`[cite: 3].
* **Task 15:** Display `employee_name`, `department`, and `city`[cite: 3].
* **Task 16:** Display employees from Pune[cite: 3].
* **Task 17:** Display employees from Mumbai[cite: 3].
* **Task 18:** Display Development department employees[cite: 3].
* **Task 19:** Display Testing department employees[cite: 3].
* **Task 20:** Display only Active employees[cite: 3].
* **Task 21:** Display only Inactive employees[cite: 3].
* **Task 22:** Display the employee whose `employee_id` = 103[cite: 3].
* **Task 23:** Display the employee whose name is Priya Sharma[cite: 3].
* **Task 24:** Display employees whose salary is greater than 40000[cite: 3].
* **Task 25:** Display employees whose salary is less than 40000[cite: 3].
* **Task 26:** Display employees whose salary is equal to 35000[cite: 3].
* **Task 27:** Display employees whose salary is greater than or equal to 42000[cite: 3].
* **Task 28:** Display Pune employees whose status is Active[cite: 3].
* **Task 29:** Display Development employees whose salary is greater than 45000[cite: 3].
* **Task 30:** Display employees from Pune or Mumbai[cite: 3].

---

## Part D: Data Modification (UPDATE)

* **Task 31:** Update Rahul Patil's salary from 45000 to 48000[cite: 3].
* **Task 32:** Update Rohan Deshmukh's status from Inactive to Active[cite: 3].
* **Task 33:** Update Sneha Kulkarni's city from Nashik to Pune[cite: 3].
* **Task 34:** Update Priya Sharma's department from Testing to Development[cite: 3].
* **Task 35:** Update employee 106 salary to 45000[cite: 3].
* **Task 36:** Increase salary of employee 103 by 3000[cite: 3].
* **Task 37:** Increase salary of all Testing employees by 2000[cite: 3].
* **Task 38:** Change all employees from Mumbai to Mumbai Branch in the city column[cite: 3].

---

## Part E: Data Deletion (DELETE)

* **Task 39:** Delete the employee with `employee_id` = 105[cite: 3].
* **Task 40:** Delete the employee named Rohan Deshmukh[cite: 3].
* **Task 41:** Delete all employees whose status is Inactive[cite: 3].
* **Task 42:** Delete employees whose salary is less than 30000[cite: 3].
* **Task 43:** Delete the employee with `employee_id` = 104[cite: 3].

---

## Part F: Altering Table Structure (ALTER TABLE)

* **Task 44:** Add a new column: `email VARCHAR(100)`[cite: 3].
* **Task 45:** Add a new column: `mobile VARCHAR(15)`[cite: 3].
* **Task 46:** Change the size of city to `VARCHAR(100)`[cite: 3].
* **Task 47:** Rename column `employee_name` to `name`[cite: 3].
* **Task 48:** Delete the `mobile` column[cite: 3].
* **Task 49:** Add a column: `experience INT`[cite: 3].
* **Task 50:** Update experience for one employee[cite: 3].

---

## Part G: Table Lifecycle & Secondary DDL

* **Task 51:** Create another table named `departments` (`department_id INT PRIMARY KEY`, `department_name VARCHAR(100)`, `location VARCHAR(100)`)[cite: 3].
* **Task 52:** Insert 3 department records[cite: 3].
* **Task 53:** Display all department records[cite: 3].
* **Task 54:** Update one department location[cite: 3].
* **Task 55:** Delete one department record[cite: 3].
* **Task 56:** Rename `departments` table to `company_departments`[cite: 3].
* **Task 57:** Display the structure of `company_departments`[cite: 3].
* **Task 58:** Remove all records from `company_departments` while keeping the table structure (`TRUNCATE`)[cite: 3].
* **Task 59:** Delete the `company_departments` table completely (`DROP TABLE`)[cite: 3].
* **Task 60:** Display all remaining tables in the database[cite: 3].