# ⚡ SQL to PySpark Phase 4 – Business Pipeline & Analytics

## 📌 Objective

The objective of this phase is to build a complete end-to-end ETL (Extract, Transform, Load) pipeline using PySpark and SQL. The focus is on data ingestion, cleaning, transformation, business analytics, customer segmentation, and final reporting.

---

## 🔄 ETL Workflow

### 📥 Extract

Loaded data from Spark Playground sample datasets:

* `customers.csv`
* `sales.csv`

### 🔧 Transform

Performed data cleaning and transformations:

* Removed rows with missing `customer_id`
* Removed duplicate records
* Converted `total_amount` to numeric type
* Filtered invalid values
* Joined customer and sales datasets
* Applied aggregations and customer segmentation

### 📤 Load

Generated analytical reports and final reporting tables using PySpark DataFrames.

---

## 📊 Business Pipeline Tasks

### 1️⃣ Daily Sales

Calculated total sales for each day.

**Output:**

* sale_date
* total_sales

### 2️⃣ City-wise Revenue

Calculated total revenue generated from each city.

**Output:**

* city
* total_revenue

### 3️⃣ Top 5 Customers

Identified the top 5 customers based on total spending.

**Output:**

* customer_name
* total_spend

### 4️⃣ Repeat Customers

Identified customers with more than one order.

**Output:**

* customer_id
* order_count

### 5️⃣ Customer Segmentation

Segmented customers into:

* 🥇 Gold → total_spend > 10000
* 🥈 Silver → total_spend between 5000 and 10000
* 🥉 Bronze → total_spend < 5000

**Output:**

* customer_name
* total_spend
* segment

### 6️⃣ Final Reporting Table

Created a consolidated reporting table containing customer insights.

**Output:**

* customer_name
* city
* total_spend
* order_count
* segment

### 7️⃣ Save Output

Prepared the final DataFrame for export and reporting.

---

## 🛠️ Technologies Used

* 🐍 Python 3.8
* ⚡ PySpark 3.5.5
* 🗄️ SQL
* 🌐 Spark Playground

---

## 📁 Project Structure

```text
phase4/
├── phase4_queries.sql
├── etl_pipeline.py
├── screenshots/
└── README.md
```

---

## 🎯 Learning Outcomes

Through this phase, I learned:

* ETL pipeline design
* Data ingestion using PySpark
* Data cleaning and validation
* Aggregation and reporting
* DataFrame joins
* Customer segmentation
* Business analytics workflows
* SQL to PySpark conversion
* Building reusable data pipelines

---

## ✅ Conclusion

This phase provided practical experience in designing a complete ETL pipeline and generating business insights using PySpark. It strengthened my understanding of data engineering workflows, data transformation techniques, customer segmentation, and business reporting using scalable data processing frameworks.
