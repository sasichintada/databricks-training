

# 🚀 DATE & TIMESTAMP FUNCTIONS IN MYSQL (PRACTICE ASSIGNMENT)

---

## 📘 Overview

This assignment focuses on mastering **MySQL Date & Timestamp functions** using real-world order data. It includes data extraction, formatting, filtering, arithmetic operations, and business logic using SQL.

---

## 🎯 Objective

To understand and practice:

* Date extraction and formatting
* Timestamp handling
* Date arithmetic operations
* Business rule implementation using CASE
* Real-world order analytics using SQL

---

## 🧱 Database Schema

### 📌 Table: orders

```sql
CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_name VARCHAR(50),
order_date DATE,
order_timestamp TIMESTAMP,
delivery_date DATE,
order_amount DECIMAL(10,2)
);
```

---

## 📊 Sample Data

```sql
INSERT INTO orders VALUES
(1,'Karthik','2024-01-15','2024-01-15 10:30:45','2024-01-20',2500.00),
(2,'Veena','2024-02-18','2024-02-18 18:45:20','2024-02-22',3200.50),
(3,'Ravi','2024-03-02','2024-03-02 09:15:10','2024-03-08',4100.75),
(4,'Anil','2024-03-09','2024-03-09 14:05:55','2024-03-15',1800.00),
(5,'Suresh','2024-01-07','2024-01-07 23:55:00','2024-01-12',2900.00);
```

---

## 🧩 Query Categories

---

### 🔹 1. Current Date & Time Functions

* CURDATE()
* CURRENT_TIME()
* NOW()

---

### 🔹 2. Date Extraction

* YEAR()
* MONTH()
* DAY()

---

### 🔹 3. Date Naming Functions

* MONTHNAME()
* DAYNAME()

---

### 🔹 4. Filtering Data by Date

* WEEKEND filtering
* WEEKDAY filtering
* MONTH-based filtering

---

### 🔹 5. Date Arithmetic

* DATE_ADD()
* DATE_SUB()

---

### 🔹 6. Difference Calculations

* DATEDIFF()
* TIMESTAMPDIFF()

---

### 🔹 7. Date Boundary Functions

* LAST_DAY()
* FIRST_DAY (calculated manually)

---

### 🔹 8. Formatting Functions

* DATE_FORMAT() for:

  * DD-MM-YYYY
  * Full timestamp formatting

---

### 🔹 9. Business Logic Using CASE

* Financial year calculation
* Date-based classification

---

## 📌 Key Queries Implemented

* Current system date and time
* Order date breakdown (year, month, day)
* Month name and weekday identification
* Weekend vs weekday filtering
* Delivery time calculation
* Timestamp difference analysis
* Date formatting for reports
* Financial year classification logic

---

## 🛠️ Tools Used

| Tool       | Purpose              |
| ---------- | -------------------- |
| MySQL      | Query execution      |
| DB Fiddle  | Online testing       |
| SQL Editor | Practice environment |

---

## 📈 Skills Gained

* SQL date & time manipulation
* Real-world business query building
* Data formatting techniques
* Time-based analytics
* CASE-based decision making
* Query optimization thinking

---

## 🎯 Learning Outcomes

After completing this assignment, you can:

* ✅ Work with MySQL date/time functions
* ✅ Extract and transform date components
* ✅ Perform time-based calculations
* ✅ Build financial and business logic queries
* ✅ Format data for reporting systems
* ✅ Handle real-world order datasets

---

## 💡 Highlights

* Practiced **real-world order analysis**
* Learned **financial year logic**
* Mastered **date difference calculations**
* Built **formatted reporting queries**
* Strengthened **SQL analytical thinking**

---

## 🏁 Conclusion

This assignment successfully covers **core and advanced MySQL Date & Timestamp functions** used in real-world analytics systems such as:

* E-commerce orders
* Financial reporting
* Delivery tracking systems
* Business intelligence dashboards

---


