# ⚡ SQL to PySpark Phase 3 – Final ETL & Pipeline

## 📌 Objective

The objective of this phase is to move beyond standalone queries and build a simple ETL (Extract, Transform, Load) pipeline using PySpark. The tasks focus on reading data, cleaning it, performing business-oriented transformations, and generating analytical reports.

---

## 🔄 ETL Workflow

### 📥 Extract

Loaded data from Spark Playground sample datasets:

* `customers.csv`
* `sales.csv`
* `products.json`
* `titanic.parquet`

### 🔧 Transform

Performed data cleaning and transformations:

* Removed rows with missing `customer_id`
* Converted `total_amount` to numeric type
* Filtered invalid records
* Applied joins, aggregations, and window functions

### 📤 Load

Displayed the final analytical outputs using PySpark DataFrames.

---

## 📊 Business Pipeline Tasks

### 1️⃣ Daily Sales

Calculated total sales for each date.

**Output:**

* sale_date
* daily_sales

### 2️⃣ City-wise Revenue

Computed total revenue generated from each city.

**Output:**

* city
* total_revenue

### 3️⃣ Repeat Customers

Identified customers who placed more than two orders.

**Output:**

* customer_id
* order_count

### 4️⃣ Highest Spending Customer in Each City

Used aggregation and window functions to identify the top spender in every city.

**Output:**

* city
* customer_id
* customer_name
* total_spend

### 5️⃣ Final Reporting Table

Created a consolidated reporting table combining customer and sales information.

**Output:**

* customer_id
* first_name
* last_name
* city
* total_spend
* order_count

---

## 🛠️ Technologies Used

* 🐍 Python 3.8
* ⚡ PySpark 3.5.5
* 🗄️ SQL
* 🌐 Spark Playground

---

## 📁 Project Structure

```text
phase3/
├── phase3_queries.sql
├── phase3_etl_pipeline.py
├── screenshots/
└── README.md
```

---

## 🎯 Learning Outcomes

Through this phase, I learned:

* Data ingestion using PySpark
* ETL pipeline concepts
* Data cleaning techniques
* Aggregation and filtering operations
* DataFrame joins
* Window functions
* Converting SQL logic into PySpark transformations
* Building business reporting workflows

---

## ✅ Conclusion

This phase provided hands-on experience in designing a basic ETL pipeline and generating business insights using PySpark. It strengthened my understanding of data engineering workflows, data transformation techniques, and scalable data processing concepts.
