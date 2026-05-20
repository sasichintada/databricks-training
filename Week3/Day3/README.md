
# 📘 PySpark CSV Data Analysis using Databricks

This assignment focuses on reading, processing, and analyzing CSV datasets using PySpark in Databricks. The project demonstrates how to work with DataFrames, perform transformations, execute SQL queries, and analyze structured data using Apache Spark.

---

# 🔹 Topics Covered

## 📌 PySpark DataFrame Operations
- Reading CSV files
- Schema inference
- Displaying datasets
- DataFrame transformations
- Filtering records
- Aggregation operations
- Grouping and analysis

## 📌 Databricks File Management
- Creating Catalogs
- Creating Volumes
- Uploading CSV files
- Managing datasets in Unity Catalog

## 📌 Spark SQL Operations
- Creating temporary SQL views
- Executing SQL queries
- Querying datasets using Spark SQL
- Analytical reporting

## 📌 Data Analysis
- Employee dataset analysis
- Sales dataset analysis
- Salary-based filtering
- Region-wise sales aggregation
- Row counting and schema analysis

---

# 📊 Assignment Overview

Implemented and executed PySpark operations on:

- Employee Dataset (`empData.csv`)
- Sales Dataset (`Big Sales.csv`)

The assignment includes:

- Reading CSV files into DataFrames
- Displaying datasets using Databricks
- Schema inference
- SQL query execution
- Filtering records
- Aggregation and grouping operations
- Basic analytical processing

---

# 🛠️ Tools & Environment

| Tool | Purpose |
|---|---|
| PySpark | Distributed Data Processing |
| Databricks | Big Data Analytics Platform |
| Spark SQL | SQL Query Execution |
| GitHub | Documentation & Version Control |

---

# 📁 Files Included

| File | Description |
|---|---|
| CSV_Read_Assignment.ipynb | Databricks notebook |
| empData.csv | Employee dataset |
| Big Sales.csv | Sales dataset |
| README.md | Project documentation |

---

# 🧩 PySpark Operations Performed

## 🔹 Reading CSV Files

Loaded CSV datasets into PySpark DataFrames using schema inference and header options.

### Employee Dataset

```python
emp_df = spark.read.format("csv") \
    .option("header", "true") \
    .option("inferSchema", "true") \
    .load("/Volumes/mycatalog/default/csvfiles/empData.csv")
````

### Sales Dataset

```python
sales_df = spark.read.format("csv") \
    .option("header", "true") \
    .option("inferSchema", "true") \
    .load("/Volumes/mycatalog/default/csvfiles/Big Sales.csv")
```

---

## 🔹 Display Operations

Displayed datasets using PySpark and Databricks display functions.

Examples:

* Showing employee records
* Displaying sales data
* Viewing structured tables
* Dataset preview operations

```python
display(emp_df)

display(sales_df)
```

---

## 🔹 Schema Analysis

Performed schema inference and datatype analysis.

Examples:

* Column datatype identification
* Structured schema inspection
* Automatic schema detection

```python
emp_df.printSchema()

sales_df.printSchema()
```

---

## 🔹 Filtering Operations

Performed filtering operations on datasets.

Examples:

* Salary-based employee filtering
* Conditional data extraction
* Analytical record filtering

```python
emp_df.filter(emp_df.salary > 50000).show()
```

---

## 🔹 Aggregation Operations

Implemented aggregation and grouping analysis.

Examples:

* Region-wise sales analysis
* Sum aggregation
* Group-based analytics

```python
sales_df.groupBy("Region").sum("Sales").show()
```

---

## 🔹 SQL Query Operations

Created temporary views and executed SQL queries using Spark SQL.

### Create Views

```python
emp_df.createOrReplaceTempView("employees")

sales_df.createOrReplaceTempView("sales")
```

### SQL Queries

```sql
SELECT * FROM employees;
```

```sql
SELECT * FROM sales;
```

---

# 📈 Skills Improved

* PySpark DataFrame operations
* CSV file processing
* Big data analytics
* Spark SQL querying
* Data filtering and aggregation
* Schema analysis
* Databricks workflow management
* Distributed data processing
* Analytical data handling
* Real-world data engineering concepts

---

# 🎯 Key Learning Outcomes

After completing this assignment, gained practical experience in:

* ✅ Reading CSV files using PySpark
* ✅ Working with Spark DataFrames
* ✅ Performing schema inference
* ✅ Using Databricks Volumes
* ✅ Executing Spark SQL queries
* ✅ Filtering and aggregating datasets
* ✅ Performing analytical operations
* ✅ Managing structured datasets
* ✅ Understanding distributed processing
* ✅ Strengthening PySpark concepts

---

# 💡 Highlights

* Practiced PySpark DataFrame operations
* Learned Databricks file management
* Worked with real CSV datasets
* Implemented SQL queries in Spark
* Performed aggregation analytics
* Improved understanding of Spark execution
* Strengthened big data processing concepts
* Practiced real-world analytical workflows

---

# 🏁 Conclusion

Successfully completed PySpark CSV Data Analysis Assignment covering:

* CSV File Processing
* PySpark DataFrames
* Databricks Volume Management
* Schema Inference
* Data Filtering
* Aggregation Operations
* Spark SQL Queries
* Employee Dataset Analysis
* Sales Dataset Analysis
* Distributed Data Processing

---
