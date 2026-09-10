Task 1:
create Database company_db;
Query OK, 1 row affected (0.03 sec)

Task 2:
use company_db;
Database changed

Task 3:
create table employees(employee_id int primary key, employee_name varchar(100), department varchar(50), salary decimal(10, 2), city varchar(50), joining_date Date, status varchar(20));
Query OK, 0 rows affected (0.07 sec)

Task 4:
 Desc employees;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| employee_id   | int           | NO   | PRI | NULL    |       |
| employee_name | varchar(100)  | YES  |     | NULL    |       |
| department    | varchar(50)   | YES  |     | NULL    |       |
| salary        | decimal(10,2) | YES  |     | NULL    |       |
| city          | varchar(50)   | YES  |     | NULL    |       |
| joining_date  | date          | YES  |     | NULL    |       |
| status        | varchar(20)   | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

Task 5:
Show tables;
+----------------------+
| Tables_in_company_db |
+----------------------+
| employees            |
+----------------------+
1 row in set (0.00 sec)

Task 6:
insert into employees values(101, "Rahul Patil", "Developement", 45000, "Pune", '2026-01-10', "Active");
Query OK, 1 row affected (0.01 sec)

Task 7:
insert into employees values(102, "Priya Sharma", "Testing", 38000, "Mumbai", '2026-02-15', "Active");
Query OK, 1 row affected (0.01 sec)

Task 8:
insert into employees values(103, "Amit Joshi", "Development", 52000, "Pune", '2025-12-05', "Active");
Query OK, 1 row affected (0.01 sec)


Task 9:
insert into employees values(104," Sneha Kulkarni", "HR", 35000, "Nashik", '2026-03-20'," Active");
Query OK, 1 row affected (0.01 sec)


Task 10:
insert into employees value(105, "Rohan Deshmukh", "Support", 30000," Mumbai",'2026-04-01', "Inactive" );
Query OK, 1 row affected (0.01 sec)


Task 11:
insert into employees value(106, "Anjali More", "Testing", 42000," Pune",'2026-05-12', "Active" );
Query OK, 1 row affected (0.01 sec)


Task 12:
 select * from employees;
+-------------+-----------------+--------------+----------+---------+--------------+----------+
| employee_id | employee_name   | department   | salary   | city    | joining_date | status   |
+-------------+-----------------+--------------+----------+---------+--------------+----------+
|         101 | Rahul Patil     | Developement | 45000.00 | Pune    | 2026-01-10   | Active   |
|         102 | Priya Sharma    | Testing      | 38000.00 | Mumbai  | 2026-02-15   | Active   |
|         103 | Amit Joshi      | Development  | 52000.00 | Pune    | 2025-12-05   | Active   |
|         104 |  Sneha Kulkarni | HR           | 35000.00 | Nashik  | 2026-03-20   |  Active  |
|         105 | Rohan Deshmukh  | Support      | 30000.00 |  Mumbai | 2026-04-01   | Inactive |
|         106 | Anjali More     | Testing      | 42000.00 |  Pune   | 2026-05-12   | Active   |
+-------------+-----------------+--------------+----------+---------+--------------+----------+
6 rows in set (0.00 sec)


Task 13:
select employee_name from employees;
+-----------------+
| employee_name   |
+-----------------+
| Rahul Patil     |
| Priya Sharma    |
| Amit Joshi      |
|  Sneha Kulkarni |
| Rohan Deshmukh  |
| Anjali More     |
+-----------------+
6 rows in set (0.00 sec)


Task 14:
select employee_name,salary from employees;
+-----------------+----------+
| employee_name   | salary   |
+-----------------+----------+
| Rahul Patil     | 45000.00 |
| Priya Sharma    | 38000.00 |
| Amit Joshi      | 52000.00 |
|  Sneha Kulkarni | 35000.00 |
| Rohan Deshmukh  | 30000.00 |
| Anjali More     | 42000.00 |
+-----------------+----------+
6 rows in set (0.00 sec)


Task 15:
select employee_name,department, city from employees;
+-----------------+--------------+---------+
| employee_name   | department   | city    |
+-----------------+--------------+---------+
| Rahul Patil     | Developement | Pune    |
| Priya Sharma    | Testing      | Mumbai  |
| Amit Joshi      | Development  | Pune    |
|  Sneha Kulkarni | HR           | Nashik  |
| Rohan Deshmukh  | Support      |  Mumbai |
| Anjali More     | Testing      |  Pune   |
+-----------------+--------------+---------+
6 rows in set (0.00 sec)


Task 16:
 select * from employees where city = "Pune";
+-------------+---------------+--------------+----------+------+--------------+--------+
| employee_id | employee_name | department   | salary   | city | joining_date | status |
+-------------+---------------+--------------+----------+------+--------------+--------+
|         101 | Rahul Patil   | Developement | 45000.00 | Pune | 2026-01-10   | Active |
|         103 | Amit Joshi    | Development  | 52000.00 | Pune | 2025-12-05   | Active |
+-------------+---------------+--------------+----------+------+--------------+--------+
2 rows in set (0.00 sec)


Task 17:
 select * from employees where city = "Mumbai";
+-------------+---------------+------------+----------+--------+--------------+--------+
| employee_id | employee_name | department | salary   | city   | joining_date | status |
+-------------+---------------+------------+----------+--------+--------------+--------+
|         102 | Priya Sharma  | Testing    | 38000.00 | Mumbai | 2026-02-15   | Active |
+-------------+---------------+------------+----------+--------+--------------+--------+
1 row in set (0.00 sec)

Task 18:
 select * from employees where department = "Development";
+-------------+---------------+-------------+----------+------+--------------+--------+
| employee_id | employee_name | department  | salary   | city | joining_date | status |
+-------------+---------------+-------------+----------+------+--------------+--------+
|         103 | Amit Joshi    | Development | 52000.00 | Pune | 2025-12-05   | Active |
+-------------+---------------+-------------+----------+------+--------------+--------+
1 row in set (0.00 sec)

Task 19:
 select * from employees where department = "Testing";
+-------------+---------------+------------+----------+--------+--------------+--------+
| employee_id | employee_name | department | salary   | city   | joining_date | status |
+-------------+---------------+------------+----------+--------+--------------+--------+
|         102 | Priya Sharma  | Testing    | 38000.00 | Mumbai | 2026-02-15   | Active |
|         106 | Anjali More   | Testing    | 42000.00 |  Pune  | 2026-05-12   | Active |
+-------------+---------------+------------+----------+--------+--------------+--------+
2 rows in set (0.00 sec)

Task 20:
select * from employees where status = "Active";
+-------------+---------------+--------------+----------+--------+--------------+--------+
| employee_id | employee_name | department   | salary   | city   | joining_date | status |
+-------------+---------------+--------------+----------+--------+--------------+--------+
|         101 | Rahul Patil   | Developement | 45000.00 | Pune   | 2026-01-10   | Active |
|         102 | Priya Sharma  | Testing      | 38000.00 | Mumbai | 2026-02-15   | Active |
|         103 | Amit Joshi    | Development  | 52000.00 | Pune   | 2025-12-05   | Active |
|         106 | Anjali More   | Testing      | 42000.00 |  Pune  | 2026-05-12   | Active |
+-------------+---------------+--------------+----------+--------+--------------+--------+
4 rows in set (0.00 sec)

Task 21:
 select * from employees where status = "Inactive";
+-------------+----------------+------------+----------+---------+--------------+----------+
| employee_id | employee_name  | department | salary   | city    | joining_date | status   |
+-------------+----------------+------------+----------+---------+--------------+----------+
|         105 | Rohan Deshmukh | Support    | 30000.00 |  Mumbai | 2026-04-01   | Inactive |
+-------------+----------------+------------+----------+---------+--------------+----------+
1 row in set (0.00 sec)


Task 22:
select * from employees where employee_id = 103;
+-------------+---------------+-------------+----------+------+--------------+--------+
| employee_id | employee_name | department  | salary   | city | joining_date | status |
+-------------+---------------+-------------+----------+------+--------------+--------+
|         103 | Amit Joshi    | Development | 52000.00 | Pune | 2025-12-05   | Active |
+-------------+---------------+-------------+----------+------+--------------+--------+
1 row in set (0.01 sec)

Task 23:
 select * from employees where employee_name = "Priya Sharma";
+-------------+---------------+------------+----------+--------+--------------+--------+
| employee_id | employee_name | department | salary   | city   | joining_date | status |
+-------------+---------------+------------+----------+--------+--------------+--------+
|         102 | Priya Sharma  | Testing    | 38000.00 | Mumbai | 2026-02-15   | Active |
+-------------+---------------+------------+----------+--------+--------------+--------+
1 row in set (0.00 sec)

Task 24:
select * from employees where salary > 40000;
+-------------+---------------+--------------+----------+-------+--------------+--------+
| employee_id | employee_name | department   | salary   | city  | joining_date | status |
+-------------+---------------+--------------+----------+-------+--------------+--------+
|         101 | Rahul Patil   | Developement | 45000.00 | Pune  | 2026-01-10   | Active |
|         103 | Amit Joshi    | Development  | 52000.00 | Pune  | 2025-12-05   | Active |
|         106 | Anjali More   | Testing      | 42000.00 |  Pune | 2026-05-12   | Active |
+-------------+---------------+--------------+----------+-------+--------------+--------+
3 rows in set (0.00 sec)

Task 25:
select * from employees where salary < 40000;
+-------------+-----------------+------------+----------+---------+--------------+----------+
| employee_id | employee_name   | department | salary   | city    | joining_date | status   |
+-------------+-----------------+------------+----------+---------+--------------+----------+
|         102 | Priya Sharma    | Testing    | 38000.00 | Mumbai  | 2026-02-15   | Active   |
|         104 |  Sneha Kulkarni | HR         | 35000.00 | Nashik  | 2026-03-20   |  Active  |
|         105 | Rohan Deshmukh  | Support    | 30000.00 |  Mumbai | 2026-04-01   | Inactive |
+-------------+-----------------+------------+----------+---------+--------------+----------+
3 rows in set (0.00 sec)


Task 26:
select * from employees where salary = 35000;
+-------------+-----------------+------------+----------+--------+--------------+---------+
| employee_id | employee_name   | department | salary   | city   | joining_date | status  |
+-------------+-----------------+------------+----------+--------+--------------+---------+
|         104 |  Sneha Kulkarni | HR         | 35000.00 | Nashik | 2026-03-20   |  Active |
+-------------+-----------------+------------+----------+--------+--------------+---------+
1 row in set (0.00 sec)


Task 27:
select * from employees where salary >= 42000;
+-------------+---------------+--------------+----------+-------+--------------+--------+
| employee_id | employee_name | department   | salary   | city  | joining_date | status |
+-------------+---------------+--------------+----------+-------+--------------+--------+
|         101 | Rahul Patil   | Developement | 45000.00 | Pune  | 2026-01-10   | Active |
|         103 | Amit Joshi    | Development  | 52000.00 | Pune  | 2025-12-05   | Active |
|         106 | Anjali More   | Testing      | 42000.00 |  Pune | 2026-05-12   | Active |
+-------------+---------------+--------------+----------+-------+--------------+--------+
3 rows in set (0.00 sec)


Task 28:
 select * from employees where city = "Pune" and status = "Active";
+-------------+---------------+--------------+----------+------+--------------+--------+
| employee_id | employee_name | department   | salary   | city | joining_date | status |
+-------------+---------------+--------------+----------+------+--------------+--------+
|         101 | Rahul Patil   | Developement | 45000.00 | Pune | 2026-01-10   | Active |
|         103 | Amit Joshi    | Development  | 52000.00 | Pune | 2025-12-05   | Active |
+-------------+---------------+--------------+----------+------+--------------+--------+
2 rows in set (0.00 sec)


Task 29:
select * from employees where department = "Development" and salary > 45000;
+-------------+---------------+-------------+----------+------+--------------+--------+
| employee_id | employee_name | department  | salary   | city | joining_date | status |
+-------------+---------------+-------------+----------+------+--------------+--------+
|         103 | Amit Joshi    | Development | 52000.00 | Pune | 2025-12-05   | Active |
+-------------+---------------+-------------+----------+------+--------------+--------+
1 row in set (0.00 sec)


Task 30:
 select * from employees where city = "Pune" or city = "Mumbai";
+-------------+---------------+--------------+----------+--------+--------------+--------+
| employee_id | employee_name | department   | salary   | city   | joining_date | status |
+-------------+---------------+--------------+----------+--------+--------------+--------+
|         101 | Rahul Patil   | Developement | 45000.00 | Pune   | 2026-01-10   | Active |
|         102 | Priya Sharma  | Testing      | 38000.00 | Mumbai | 2026-02-15   | Active |
|         103 | Amit Joshi    | Development  | 52000.00 | Pune   | 2025-12-05   | Active |
+-------------+---------------+--------------+----------+--------+--------------+--------+
3 rows in set (0.00 sec)

Task 31:
 update employees
    -> set salary = 48000
    -> where employee_name = "Rahul Patil";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Task 32:
 update employees
    -> set status = "Active"
    -> where employee_name = "Rohan Deshmukh";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Task 33:
 update employees
    -> set city = "Pune"
    -> where employee_name = "Sneha Kulkarni";
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

Task 34:
 update employees
    -> set department = "Development"
    -> where employee_name = "Priya Sharma";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0


Task 35:
 update employees
    -> set salary = 45000
    -> where employee_id = 106;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Task 36:
update employees
    -> set salary = salary + 3000
    -> where employee_id = 103;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Task 37:
update employees
    -> set salary = salary + 2000
    -> where department = "Testing";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Task 38:
mysql> update employees
    -> set city = "Mumbai Branch"
    -> where city = "Mumbai";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Task 39:
delete from employees
    -> where employee_id = 105;
Query OK, 1 row affected (0.01 sec)


Task 40:
 delete from employees
    -> where employee_name = "Rohan Deshmukh";
Query OK, 0 rows affected (0.01 sec)


Task 41:
delete from employees
    -> where status = "Inactive";
Query OK, 0 rows affected (0.00 sec)

Task 42:
 delete from employees
    -> where salary < 30000;
Query OK, 0 rows affected (0.00 sec)

Task 43:
delete from employees
    -> where employee_id = 104;
Query OK, 1 row affected (0.01 sec)

Task 44:
 alter table employees add column email varchar(100);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

Task 45:
alter table employees add column mobile varchar(100);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0


Task 46:
alter table employees
    -> modify column city varchar(100);
Query OK, 4 rows affected (0.07 sec)
Records: 4  Duplicates: 0  Warnings: 0

Task 47:
alter table employees
    -> change column employee_name name varchar(20);
Query OK, 4 rows affected (0.05 sec)
Records: 4  Duplicates: 0  Warnings: 0


Task 48:
alter table employees
    -> drop column mobile;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

Task 49:
alter table employees
    -> add column experience int;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

Task 50:
update employees
    -> set experience  = 2
    -> where employee_id = 101;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0


Task 51:
mysql> create table departments(department_id int primary key, department_name varchar(100), location varchar(100));
Query OK, 0 rows affected (0.03 sec)

Task 52:
 insert into departments values(101, "IT", "Pune"),
    -> (102, "Marketing", "Mumbai"),
    -> (103, "Finance", "Satara");
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Task 53:
select * from departments;
+---------------+-----------------+----------+
| department_id | department_name | location |
+---------------+-----------------+----------+
|           101 | IT              | Pune     |
|           102 | Marketing       | Mumbai   |
|           103 | Finance         | Satara   |
+---------------+-----------------+----------+
3 rows in set (0.00 sec)


Task 54:
update departments
    -> set location = "Satara"
    -> where location = "Pune";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0


Task 55:
delete from departments where department_id = 102;
Query OK, 1 row affected (0.01 sec)


Task 56:
rename table departments to company_departments;
Query OK, 0 rows affected (0.02 sec)


Task 57:
desc company_departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| department_id   | int          | NO   | PRI | NULL    |       |
| department_name | varchar(100) | YES  |     | NULL    |       |
| location        | varchar(100) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

Task 58:
 truncate table company_departments;
Query OK, 0 rows affected (0.03 sec)


Task 59:
 drop table company_departments;
Query OK, 0 rows affected (0.03 sec)


Task 60:
show tables;
+----------------------+
| Tables_in_company_db |
+----------------------+
| employees            |
+----------------------+
1 row in set (0.00 sec)