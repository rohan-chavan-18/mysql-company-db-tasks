# QuickBite MySQL Company-Level Challenge — Task 5

Welcome to the **Task 5** directory of the QuickBite challenge from Kiran Academy. This document serves as the project README, detailing the database architecture, challenge tiers, and learning objectives for this practical MySQL project.

---

## 📋 Project Overview

As a Junior Database Developer at **QuickBite Technologies Pvt. Ltd.**, the objective is to analyze restaurant data, cuisines, cities, ratings, pricing, order counts, and delivery performance using MySQL. The challenge simulates real-world business scenarios where SQL developers translate company requirements into structured database queries.

---

## 🏢 Database Architecture (`quickbite`)

The database is built using a single primary table named `restaurants` containing 30 demo records:

* **Table Name:** `restaurants`
* **Primary Key:** `restaurant_id`
* **Key Attributes:** `restaurant_name`, `cuisine`, `city`, `rating`, `avg_order_value`, `orders_count`, `delivery_fee`, `est_delivery_time`, `owner_name`, and `brand`.

---

## 🏆 Challenge Levels & Structure

The challenge is divided into progressive technical levels and classroom competition points:

| Stage / Level | Focus Area | Tasks Covered |
| :--- | :--- | :--- |
| **Level 1 — Food Detective** | Basic filtering, comparison, ranges, and lists (`WHERE`, `BETWEEN`, `IN`, `LIKE`) | Tasks 1–10 |
| **Level 2 — Recommendation Team** | Sorting, uniqueness, aliasing, and limiting (`ORDER BY`, `DISTINCT`, `LIMIT`) | Tasks 11–20 |
| **Level 3 — Find the Hidden Restaurants** | Advanced pattern matching and wildcards (`LIKE`) | Tasks 21–28 |
| **Level 4 — Business Team** | Multi-condition filtering (`AND`, `OR`, `!=`) | Tasks 29–38 |
| **Level 5 — Boss Challenges** | Analytical queries, aggregates (`AVG()`), and multi-factor filtering | 8 Challenges |
| **FINAL BOSS — CEO Challenge** | Comprehensive enterprise reporting (combining multi-level filters, sorting, and limits) | 1 Challenge |

---

## 💡 Key SQL Concepts Practiced

* Database and table creation (`CREATE DATABASE`, `CREATE TABLE`)
* Data manipulation and data query language (`INSERT`, `SELECT`)
* Conditional operators and pattern matching (`WHERE`, `AND`, `OR`, `NOT`, `BETWEEN`, `IN`, `LIKE`)
* Result organization (`DISTINCT`, column aliases, `ORDER BY ASC/DESC`, `LIMIT`)
* Aggregate functions (`AVG()`)
