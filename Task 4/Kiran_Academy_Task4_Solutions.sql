/* =========================================================
   KIRAN ACADEMY - SQL INDUSTRIAL PRACTICAL TASK
   Employee Management System
   WHERE Clause & Filtering Operators (Task 1 to 60)
========================================================= */


/* =========================
   PART B - BASIC FILTERS
========================= */

-- Task 1: Display all employee records from Pune city
SELECT * FROM employees WHERE city = 'Pune';

-- Task 2: Display all employees working in Mumbai
SELECT * FROM employees WHERE city = 'Mumbai';

-- Task 3: Display all employees belonging strictly to IT department
SELECT * FROM employees WHERE department = 'IT';

-- Task 4: Display all employees belonging to HR department
SELECT * FROM employees WHERE department = 'HR';

-- Task 5: Display all employees belonging to Sales department
SELECT * FROM employees WHERE department = 'Sales';

-- Task 6: Display all employees whose status is Active
SELECT * FROM employees WHERE status = 'Active';

-- Task 7: Display all employees whose status is Inactive
SELECT * FROM employees WHERE status = 'Inactive';

-- Task 8: Display employee record where employee_id = 103
SELECT * FROM employees WHERE employee_id = 103;

-- Task 9: Display employee named 'Priya Sharma'
SELECT * FROM employees WHERE employee_name = 'Priya Sharma';

-- Task 10: Display employees whose salary = 35000
SELECT * FROM employees WHERE salary = 35000;

-- Task 11: Display employees not belonging to Pune
SELECT * FROM employees WHERE city <> 'Pune';

-- Task 12: Display employees whose department is NOT Testing
SELECT * FROM employees WHERE department <> 'Testing';


/* =========================
   PART C - RELATIONAL OPS
========================= */

-- Task 13: Salary > 40000
SELECT * FROM employees WHERE salary > 40000;

-- Task 14: Salary < 35000
SELECT * FROM employees WHERE salary < 35000;

-- Task 15: Salary >= 50000
SELECT * FROM employees WHERE salary >= 50000;

-- Task 16: Salary <= 30000
SELECT * FROM employees WHERE salary <= 30000;

-- Task 17: Joined after 2025-01-01
SELECT * FROM employees WHERE joining_date > '2025-01-01';

-- Task 18: Joined on or before 2024-12-31
SELECT * FROM employees WHERE joining_date <= '2024-12-31';

-- Task 19: Employee_id > 110
SELECT * FROM employees WHERE employee_id > 110;

-- Task 20: Name and joining_date for employees after 2026-01-01
SELECT employee_name, joining_date 
FROM employees 
WHERE joining_date >= '2026-01-01';


/* =========================
   PART D - AND CONDITIONS
========================= */

-- Task 21: Pune employees whose status is Active
SELECT * FROM employees 
WHERE city = 'Pune' AND status = 'Active';

-- Task 22: IT employees with salary > 50000
SELECT * FROM employees 
WHERE department = 'IT' AND salary > 50000;

-- Task 23: Mumbai employees whose status is Inactive
SELECT * FROM employees 
WHERE city = 'Mumbai' AND status = 'Inactive';

-- Task 24: Sales employees from Pune earning >= 42000
SELECT * FROM employees 
WHERE department = 'Sales' AND city = 'Pune' AND salary >= 42000;

-- Task 25: HR employees joined after 2025-06-01
SELECT * FROM employees 
WHERE department = 'HR' AND joining_date > '2025-06-01';

-- Task 26: Active employees salary between 40000 and 70000
SELECT * FROM employees 
WHERE status = 'Active' AND salary BETWEEN 40000 AND 70000;

-- Task 27: Mumbai Testing employees with salary > 38000
SELECT * FROM employees 
WHERE city = 'Mumbai' AND department = 'Testing' AND salary > 38000;

-- Task 28: Active employees joined after 2026-01-01 with salary > 45000
SELECT * FROM employees 
WHERE status = 'Active' AND joining_date > '2026-01-01' AND salary > 45000;


/* =========================
   PART E - OR & NOT
========================= */

-- Task 29: Employees from Pune OR Mumbai
SELECT * FROM employees WHERE city = 'Pune' OR city = 'Mumbai';

-- Task 30: IT OR HR employees
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR';

-- Task 31: Salary < 32000 OR > 60000
SELECT * FROM employees WHERE salary < 32000 OR salary > 60000;

-- Task 32: Nashik OR salary > 55000
SELECT * FROM employees WHERE city = 'Nashik' OR salary > 55000;

-- Task 33: Employees NOT in HR department
SELECT * FROM employees WHERE NOT department = 'HR';

-- Task 34: Employees whose status is NOT Inactive
SELECT * FROM employees WHERE status <> 'Inactive';

-- Task 35: Pune or Mumbai AND Active status
SELECT * FROM employees 
WHERE (city = 'Pune' OR city = 'Mumbai') 
AND status = 'Active';

-- Task 36: Not Pune AND salary > 40000
SELECT * FROM employees 
WHERE city <> 'Pune' AND salary > 40000;


/* =========================
   PART F - BETWEEN & IN
========================= */

-- Task 37: Salary between 35000 and 55000
SELECT * FROM employees WHERE salary BETWEEN 35000 AND 55000;

-- Task 38: Salary NOT between 40000 and 65000
SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 65000;

-- Task 39: Joined between 2025
SELECT * FROM employees 
WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';

-- Task 40: Employee_id between 105 and 115
SELECT * FROM employees WHERE employee_id BETWEEN 105 AND 115;

-- Task 41: Department IN IT, HR, Sales
SELECT * FROM employees 
WHERE department IN ('IT','HR','Sales');

-- Task 42: City IN Pune, Mumbai, Nagpur
SELECT * FROM employees 
WHERE city IN ('Pune','Mumbai','Nagpur');

-- Task 43: Department NOT IN Testing, Support
SELECT * FROM employees 
WHERE department NOT IN ('Testing','Support');

-- Task 44: City NOT IN Mumbai, Nashik
SELECT * FROM employees 
WHERE city NOT IN ('Mumbai','Nashik');

-- Task 45: Employee_id IN list
SELECT * FROM employees 
WHERE employee_id IN (101,105,110,115,120);

-- Task 46: IT/Sales with salary range
SELECT * FROM employees 
WHERE department IN ('IT','Sales') 
AND salary BETWEEN 45000 AND 75000;


/* =========================
   PART G - LIKE PATTERN
========================= */

-- Task 47: Name starts with A
SELECT * FROM employees WHERE employee_name LIKE 'A%';

-- Task 48: Name starts with R
SELECT * FROM employees WHERE employee_name LIKE 'R%';

-- Task 49: Name ends with a
SELECT * FROM employees WHERE employee_name LIKE '%a';

-- Task 50: Name contains sh
SELECT * FROM employees WHERE employee_name LIKE '%sh%';

-- Task 51: Name starts P and ends a
SELECT * FROM employees 
WHERE employee_name LIKE 'P%' AND employee_name LIKE '%a';

-- Task 52: Name with exactly 5 characters
SELECT * FROM employees WHERE employee_name LIKE '_____';

-- Task 53: Second letter is a
SELECT * FROM employees WHERE employee_name LIKE '_a%';

-- Task 54: Name NOT starting with R
SELECT * FROM employees WHERE employee_name NOT LIKE 'R%';


/* =========================
   PART H - NULL CHECK
========================= */

-- Task 55: Email is NULL
SELECT * FROM employees WHERE email IS NULL;

-- Task 56: Email is NOT NULL
SELECT * FROM employees WHERE email IS NOT NULL;

-- Task 57: Pune employees with missing email
SELECT * FROM employees 
WHERE city = 'Pune' AND email IS NULL;

-- Task 58: Active employees with email and salary > 40000
SELECT * FROM employees 
WHERE status = 'Active' 
AND email IS NOT NULL 
AND salary > 40000;


/* =========================
   PART I - FINAL CHALLENGE
========================= */

-- Task 59: Complex filter (All conditions)
SELECT * FROM employees 
WHERE status = 'Active'
AND city IN ('Pune','Mumbai')
AND department IN ('IT','Sales')
AND salary BETWEEN 40000 AND 70000
AND joining_date > '2025-01-01';

-- Task 60: Name, email, status, city advanced filter
SELECT * FROM employees 
WHERE (employee_name LIKE 'S%' OR employee_name LIKE 'R%')
AND email IS NOT NULL
AND status = 'Active'
AND city IN ('Pune','Nashik');
