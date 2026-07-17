# 📘 SQL Set Operators Practice

## 📖 Overview

This project focuses on mastering **SQL Set Operators** using employee, customer, and order datasets.

Set operators are used to combine, compare, and analyze data from multiple tables. These operations are commonly used in real-world database systems, reporting, business analytics, and technical interviews.

The practice set covers:

* UNION
* UNION ALL
* EXCEPT
* INTERSECT

through a collection of **40 SQL queries** ranging from basic to intermediate difficulty.

---

## 🚀 Tasks Completed

### 🔹 1. UNION Operator

Implemented queries to:

* Display employee names from current and former employees without duplicates.
* Retrieve all departments from multiple employee tables.
* Combine customer names from domestic and international customers.
* Display unique customer cities.
* Retrieve unique order amounts from different order sources.

### 🔹 2. UNION ALL Operator

Implemented queries to:

* Display employee names including duplicate records.
* Retrieve all departments while preserving duplicates.
* Combine customer names including repeated values.
* Display customer cities with duplicates.
* Retrieve all order amounts without removing duplicates.

### 🔹 3. EXCEPT Operator

Implemented comparison queries to:

* Find current employees who are not former employees.
* Find former employees who are not current employees.
* Identify domestic customers not found internationally.
* Find online orders missing from store orders.
* Retrieve unique departments from one employee table.

### 🔹 4. INTERSECT Operator

Implemented matching queries to:

* Find employees present in both employee tables.
* Retrieve common departments.
* Identify customers present in both customer tables.
* Find common customer cities.
* Retrieve common order records.

### 🔹 5. Intermediate Set Operations

Performed advanced comparisons including:

* Employee ID analysis across tables.
* Customer ID comparisons.
* Salary comparisons.
* Order ID comparisons.
* Department comparisons.
* Counting rows returned using UNION ALL.
* Combining multiple datasets for reporting purposes.

---

## 📁 Repository Structure

```text
SQL-Set-Operators/
│
├── schemas.sql
├── queries.sql
├── outputs.txt
└── README.md
```

### 📄 File Descriptions

#### 🗂️ schemas.sql

Contains:

* Table creation scripts.
* Employee datasets.
* Customer datasets.
* Order datasets.
* Sample data insertion statements.

#### 📝 queries.sql

Contains:

* All 40 SQL Set Operator queries.
* Organized into Basic and Intermediate sections.
* Well-commented queries for learning and practice.

#### 📊 outputs.txt

Contains:

* Query execution results.
* Output verification for each query.
* Sample result sets.

#### 📘 README.md

Contains:

* Project overview.
* Topics covered.
* Learning outcomes.
* Repository documentation.

---

## 🛠️ Technologies Used

| Technology           | Purpose                 |
| -------------------- | ----------------------- |
| SQL                  | Query Writing           |
| DB Fiddle            | Query Execution         |
| GitHub               | Repository Management   |
| Relational Databases | Data Storage & Analysis |

---

## 📊 Topics Covered

| Topic     | Queries |
| --------- | ------: |
| UNION     |      10 |
| UNION ALL |      10 |
| EXCEPT    |      10 |
| INTERSECT |      10 |
| **Total** |  **40** |

---

## 📚 SQL Set Operators Explained

### 🔹 UNION

Combines the results of two or more SELECT statements and removes duplicate rows.

**Use Case:**

* Merging customer lists from multiple sources.
* Combining employee records from different departments.

### 🔹 UNION ALL

Combines results from multiple queries while retaining duplicate records.

**Use Case:**

* Data auditing.
* Tracking duplicate transactions.
* Reporting raw datasets.

### 🔹 EXCEPT

Returns records from the first query that do not exist in the second query.

**Use Case:**

* Finding inactive customers.
* Identifying missing records.
* Detecting unmatched transactions.

### 🔹 INTERSECT

Returns records that exist in both queries.

**Use Case:**

* Finding common customers.
* Identifying repeat transactions.
* Comparing datasets.

---

## 📘 Key Learnings

Through this practice set, the following SQL concepts were strengthened:

### 📊 Data Combination

* Combining datasets from multiple tables.
* Merging records using UNION and UNION ALL.
* Understanding duplicate handling.

### 🔍 Data Comparison

* Comparing employee datasets.
* Comparing customer records.
* Comparing order information.

### 🎯 Data Matching

* Finding common records using INTERSECT.
* Identifying overlapping data between tables.

### 🚫 Data Exclusion

* Finding unmatched records using EXCEPT.
* Identifying unique records across datasets.

### 📈 Reporting & Analysis

* Building combined reports.
* Comparing operational datasets.
* Analyzing customer and employee information.

### 🧠 Query Writing Skills

* Writing efficient set-based SQL queries.
* Understanding relational database comparisons.
* Applying SQL operators in business scenarios.

---

## 🎯 Outcome

Successfully completed **40 SQL Set Operator queries** covering both basic and intermediate concepts.

The exercises provided hands-on experience in combining, comparing, filtering, and analyzing data across multiple tables. This practice strengthened SQL problem-solving skills and improved understanding of how set operations are used in real-world database systems, reporting solutions, and technical interviews.

---

