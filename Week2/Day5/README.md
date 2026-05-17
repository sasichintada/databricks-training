

# 🚀 SQL JOINS PRACTICE ASSIGNMENT

---

## 📘 Overview

This assignment focuses on mastering **SQL JOIN operations** using a real-world database containing employees, departments, and projects. It covers different types of joins and their practical usage in data analysis.

---

## 🎯 Objective

To understand and apply:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN (simulated in MySQL)
* SELF JOIN
* Multi-table relationships
* Real-world data retrieval using joins

---

## 🧱 Database Schema

### 📌 Table: employees

```sql
CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
manager_id INT,
dept_id INT
);
```

---

### 📌 Table: departments

```sql
CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);
```

---

### 📌 Table: projects

```sql
CREATE TABLE projects(
project_id INT PRIMARY KEY,
project_name VARCHAR(50),
emp_id INT
);
```

---

## 📊 Sample Data

Includes:

* Employee details with manager relationships
* Department mapping
* Project assignments

(Full insert data included in schema.sql)

---

## 🔗 Types of Joins Covered

---

### 🔹 1. INNER JOIN

Returns only matching records from both tables.

✔ Example:

* Employees with valid departments
* Employees with managers
* Employees assigned to projects

---

### 🔹 2. LEFT JOIN

Returns all records from left table + matched records from right table.

✔ Example:

* All employees including those without departments
* Employees without projects
* Departments with employee count

---

### 🔹 3. RIGHT JOIN

Returns all records from right table + matched records from left table.

✔ Example:

* All departments including empty ones
* All projects even without employees

---

### 🔹 4. FULL OUTER JOIN (Simulated)

Since MySQL does not support FULL JOIN directly, it is implemented using:

```sql
LEFT JOIN
UNION
RIGHT JOIN
```

✔ Includes:

* Employees without departments
* Departments without employees

---

### 🔹 5. SELF JOIN

Used to relate a table to itself.

✔ Example:

* Employee → Manager relationship
* Hierarchical structure analysis

---

## 📊 Query Categories

---

### 🔹 Employee–Department Analysis

* Map employees to departments
* Find employees without departments
* Count employees per department

---

### 🔹 Employee–Manager Analysis

* Find direct reporting structure
* Display manager names
* Self join-based hierarchy

---

### 🔹 Project Assignment Analysis

* Employees with projects
* Projects without employees
* Full mapping of assignments

---

### 🔹 NULL Handling with Joins

* Employees without department → NULL
* Employees without projects → NULL
* Departments without employees → NULL

---

### 🔹 Aggregation with Joins

* Department-wise employee count
* Project-wise employee mapping
* Grouped analysis using JOIN + GROUP BY

---

# 🛠️ Tools & Environment

| Tool       | Purpose                         |
| ---------- | ------------------------------- |
| MySQL | Database Management             |
| DB Fiddle  | Query Testing & Execution       |
| GitHub     | Version Control & Documentation |


---

# 📁 Files Included

| File          | Description                        |
| ------------- | ---------------------------------- |
| `schema.sql`  | Database schema and sample records |
| `queries.sql` | SQL query solutions                |
| `output.txt`  | Query outputs                      |
| `README.md`   | Project documentation              |
---

## 📈 Skills Gained

* Mastery of SQL JOIN operations
* Understanding relational databases
* Data relationship mapping
* Handling NULL values in joins
* Multi-table query writing
* Real-world data analysis
* Hierarchical data processing

---

## 🎯 Key Learning Outcomes

After completing this assignment, you can:

* ✅ Work with multiple table relationships
* ✅ Write INNER, LEFT, RIGHT joins confidently
* ✅ Simulate FULL OUTER JOIN in MySQL
* ✅ Build manager–employee hierarchies
* ✅ Analyze project assignments
* ✅ Handle missing data using joins
* ✅ Perform grouped analysis using JOIN + GROUP BY

---

## 💡 Highlights

* Practiced **real-world HR + project database**
* Learned **self join for hierarchy mapping**
* Implemented **NULL-safe queries**
* Simulated **FULL OUTER JOIN in MySQL**
* Strengthened **data modeling understanding**

---

## 🏁 Conclusion

This assignment successfully covers **core and advanced SQL JOIN concepts**, helping in:

* Database design understanding
* Interview preparation
* Real-world data analysis
* Backend SQL development

