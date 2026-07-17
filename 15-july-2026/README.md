# 📘 SQL JOIN Practice

## 📖 Project Overview

This project demonstrates SQL JOIN operations using four related tables in MySQL. It covers **Basic** and **Intermediate** level JOIN queries, helping learners understand how to retrieve and analyze data from multiple tables using different JOIN operations.

---

## 📂 Database Tables

### 🏢 Departments
- DepartmentID (Primary Key)
- DepartmentName
- Location

### 👨‍💼 Employees
- EmployeeID (Primary Key)
- EmployeeName
- DepartmentID
- Salary
- ManagerID
- JoiningDate

### 📋 Projects
- ProjectID (Primary Key)
- ProjectName
- DepartmentID
- Budget

### 🔗 EmployeeProjects
- EmployeeID
- ProjectID

---

## 📁 Project Structure

```
SQL-JOIN-Practice/
│
├── schema.sql
├── queries.sql
├── output.md
└── README.md
```

---

## 🟢 Basic SQL JOIN Practice (Q1–Q20)

### 🔹 INNER JOIN
- Employee names with department names
- Project names with department names
- Employees with project names
- Employee salary with department location
- Employees working on projects

### 🔹 LEFT JOIN
- Employees with or without departments
- Departments with or without employees
- Projects with department names
- Employees with assigned projects
- Employees without projects

### 🔹 RIGHT JOIN
- Departments with employees
- Projects with employees
- Departments and employees
- Projects with departments
- Project assignments

### 🔹 FULL JOIN
- Employees and departments
- Departments and projects
- Employees and projects
- Departments including unmatched records
- Projects including unmatched records

---

## 🟡 Intermediate SQL JOIN Practice (Q21–Q40)

### 🔹 INNER JOIN
- Employees whose department is IT
- Employees working on projects with budget above 200000
- Employee, department and project details
- Total employees in each department
- Average salary department-wise

### 🔹 LEFT JOIN
- Employees without departments
- Employees without projects
- Departments without employees
- Projects without departments
- Departments with total employees including zero employees

### 🔹 RIGHT JOIN
- Departments having no employees
- Projects without employees
- Departments even if no projects exist
- Employee count in every department
- Projects whether employees are assigned or not

### 🔹 FULL JOIN
- Departments and employees
- Unmatched employees
- Unmatched departments
- Employees and departments with NULL handling
- Departments and projects including unmatched rows

---

## 📄 Project Files

### 📄 schema.sql
Contains:
- CREATE TABLE statements
- INSERT statements
- Sample data for all tables

### 📄 queries.sql
Contains:
- 🟢 Basic JOIN Queries (Q1–Q20)
- 🟡 Intermediate JOIN Queries (Q21–Q40)

### 📄 output.md
Contains the output of every SQL query.

### 📄 README.md
Project documentation.

---

## 🧠 SQL Concepts Practiced

- ✅ INNER JOIN
- ✅ LEFT JOIN
- ✅ RIGHT JOIN
- ✅ FULL JOIN (using `LEFT JOIN + RIGHT JOIN + UNION`)
- ✅ COUNT()
- ✅ AVG()
- ✅ GROUP BY
- ✅ Aggregate Functions
- ✅ NULL Handling
- ✅ One-to-Many Relationships
- ✅ Many-to-Many Relationships

---


## 🎯 Learning Outcomes

After completing this project, you will be able to:

- ✅ Create relational database tables
- ✅ Insert sample data into multiple tables
- ✅ Write Basic and Intermediate SQL JOIN queries
- ✅ Retrieve related data from multiple tables
- ✅ Use aggregate functions with JOINs
- ✅ Analyze matched and unmatched records
- ✅ Handle NULL values effectively
- ✅ Solve interview-oriented SQL JOIN problems

---
