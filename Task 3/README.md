# banking account management - sql practical

## project title
banking_db - account management system (sql ddl, dml, dql practice)

## description
this project is a sql practice assignment based on a real-world banking account management system. it covers database creation, table design, insert operations, select queries, filtering, logical conditions, update, delete, and alter table operations.

## database name
banking_db

## table name
accounts (later renamed to bank_accounts in final tasks)

## table structure

- account_id (int, primary key)
- account_number (varchar(20))
- customer_name (varchar(100))
- account_type (varchar(30))
- branch (varchar(50))
- city (varchar(50))
- balance (decimal(12,2))
- credit_score (int)
- status (varchar(20))
- opened_date (date)

## features covered

### ddl operations
- create database
- create table
- alter table (add, modify, rename, drop)
- truncate table
- drop table

### dml operations
- insert records
- update records
- delete records

### dql operations
- select queries
- where clause filtering
- logical operators (and, or, not)
- between operator
- in operator
- like operator
- limit and offset

## tasks included
this project includes 60 sql practical tasks from basic to industry level covering:
- banking account creation
- customer data insertion
- filtering and analysis queries
- data updates and corrections
- deletion and cleanup operations

## how to run

1. open mysql workbench or command line
2. create database using:
   ```sql
   create database banking_db;
   use banking_db;
