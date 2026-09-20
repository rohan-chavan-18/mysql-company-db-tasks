📘 SQL Industrial Practical Task 4
Employee Management System — WHERE Clause & Filtering Operators
👨‍🎓 Student Information
Name: Rohan Chavan
Course: B.Tech CSE (Final Year)
Institute: Kiran Academy / College Practical Submission
Technology: MySQL
Topic: SQL WHERE Clause, Filtering, Operators
📌 Project Overview

This project demonstrates SQL filtering operations using an employees table containing 25+ records.

It covers:

Basic filtering using =, !=, <>
Relational operators (>, <, >=, <=)
Logical operators (AND, OR, NOT)
Range queries (BETWEEN)
Set operations (IN, NOT IN)
Pattern matching (LIKE)
NULL handling (IS NULL, IS NOT NULL)

🧱 Database Structure

Table: employees
Column Name	Data Type	Description
employee_id	INT PRIMARY KEY	Unique Employee ID
employee_name	VARCHAR(100)	Full name of employee
department	VARCHAR(50)	Department (IT, HR, Sales, etc.)
salary	DECIMAL(10,2)	Monthly salary
city	VARCHAR(50)	Work location
joining_date	DATE	Joining date (YYYY-MM-DD)
email	VARCHAR(100)	Email (NULL allowed)
status	VARCHAR(20)	Active / Inactive

📂 Project Structure

Internship_Program_MySql_DB.sql   → Main SQL file (Tasks 1–60)
README.md                         → Project documentation
🚀 Key SQL Concepts Covered
🔹 Basic Filtering
SELECT * FROM employees WHERE city = 'Pune';
🔹 AND / OR / NOT Conditions
SELECT * FROM employees 
WHERE city = 'Pune' AND status = 'Active';
🔹 Range Queries
SELECT * FROM employees 
WHERE salary BETWEEN 40000 AND 70000;
🔹 IN Operator
SELECT * FROM employees 
WHERE department IN ('IT','HR','Sales');
🔹 Pattern Matching
SELECT * FROM employees 
WHERE employee_name LIKE 'A%';
🔹 NULL Handling
SELECT * FROM employees 
WHERE email IS NULL;

📊 Practical Coverage

Section	Topics Covered
Part A	Table Structure
Part B	Basic Filtering
Part C	Relational Operators
Part D	AND Conditions
Part E	OR / NOT
Part F	BETWEEN / IN
Part G	LIKE Patterns
Part H	NULL Checks
Part I	Complex Queries

🏆 Key Learnings

Writing optimized SQL queries
Understanding operator precedence
Handling real-world filtering conditions
Working with NULL values
Pattern-based searching using LIKE
Combining multiple conditions efficiently

📌 Final Outcome

✔ 60 SQL queries successfully implemented
✔ Covers all WHERE clause concepts
✔ Suitable for academic submission + GitHub portfolio + interview preparation

💡 Author Notes

This project was built as part of Kiran Academy Industrial Training Program to master SQL filtering and real-world query building.

⭐ If you like this project

Give a ⭐ on the repository and connect for more SQL + Java + Full Stack projects.
