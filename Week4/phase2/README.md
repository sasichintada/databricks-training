# 🚀 SQL to PySpark Phase 2 – Revised Bridge Pack

## 📌 Objective

The goal of this phase is to bridge the gap between traditional SQL queries and PySpark DataFrame operations. This assignment focuses on applying data engineering concepts such as data cleaning, joins, aggregations, filtering, and business-oriented analysis using Spark Playground datasets.

---

## 🛠️ Technologies Used

* 🐍 Python 3.8
* ⚡ PySpark 3.5.5
* 🗄️ SQL
* 🌐 Spark Playground

---

## 📂 Datasets Used

### 👥 customers.csv

Contains customer information such as:

* Customer ID
* First Name
* Last Name
* Email
* City
* State

### 💰 sales.csv

Used as the orders dataset and contains:

* Sale ID
* Customer ID
* Product ID
* Sale Date
* Quantity
* Total Amount

---

## 🧹 Data Cleaning Performed

Before starting the analysis:

* Removed records with missing `customer_id`
* Converted `total_amount` from string to numeric type
* Verified schema and column data types
* Ensured datasets were ready for joins and aggregations

---

## 📊 Exercises Implemented

### 1️⃣ Total Order Amount for Each Customer

Calculated the total amount spent by every customer using aggregation functions.

### 2️⃣ Top 3 Customers by Total Spend

Identified the highest-spending customers based on total purchase value.

### 3️⃣ Customers With No Orders

Used joins to find customers who have not placed any orders.

### 4️⃣ City-wise Total Revenue

Calculated revenue generated from each city by joining customer and sales data.

### 5️⃣ Average Order Amount Per Customer

Computed the average transaction amount for every customer.

### 6️⃣ Customers With More Than One Order

Identified repeat customers by counting the number of orders placed.

### 7️⃣ Sort Customers by Total Spend Descending

Ranked customers according to their total spending.

---

## 🔄 SQL to PySpark Mapping

This phase helped understand how common SQL operations translate into PySpark:

| SQL Operation | PySpark Equivalent |
| ------------- | ------------------ |
| SELECT        | select()           |
| WHERE         | filter()           |
| GROUP BY      | groupBy()          |
| SUM           | agg(sum())         |
| AVG           | agg(avg())         |
| COUNT         | agg(count())       |
| JOIN          | join()             |
| ORDER BY      | orderBy()          |

---

## 📁 Project Structure

```text
phase2/
├── phase2_queries.sql
├── phase2_queries.py
├── screenshots/
│   ├── q1_total_order_amount.jpg
│   ├── q2_top3_customers.jpg
│   ├── q3_customers_no_orders.jpg
│   ├── q4_city_wise_revenue.jpg
│   ├── q5_average_order_amount.jpg
│   ├── q6_repeat_customers.jpg
│   └── q7_sort_by_total_spend.jpg
└── README.md
```

## 🎯 Learning Outcomes

Through this assignment, I gained hands-on experience with:

* Data loading using PySpark
* Data cleaning and preprocessing
* Aggregation operations
* Joining multiple datasets
* Converting SQL logic into PySpark transformations
* Analyzing business-oriented datasets
* Building confidence with Spark DataFrame APIs

---

## ✅ Conclusion

This phase provided practical experience in translating SQL concepts into PySpark and performing real-world data analysis tasks. The exercises strengthened understanding of joins, aggregations, filtering, and data cleaning, which are essential skills for data engineering workflows.
