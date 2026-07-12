# ⚡ SQL to PySpark Phase 4A – Bucketing & Segmentation

## 📌 Objective

The objective of this phase is to understand how continuous numerical values can be converted into meaningful categories using different segmentation techniques in PySpark. This phase focuses on customer bucketing, statistical grouping, ranking, and comparing multiple segmentation approaches.

---

## 🔄 Segmentation Workflow

### 📥 Extract

Loaded customer and transaction data into PySpark DataFrames.

### 🔧 Transform

Performed data preparation and segmentation:

* Calculated customer total spending
* Applied Gold, Silver, and Bronze segmentation
* Used conditional logic with `when()`
* Implemented Bucketizer-based segmentation
* Applied quantile-based segmentation
* Used window functions for ranking
* Compared results across different methods

### 📤 Load

Generated segmented datasets and analytical outputs for comparison and reporting.

---

## 📊 Segmentation Tasks

### 1️⃣ Gold / Silver / Bronze Segmentation

Created customer categories using fixed business rules.

**Output:**

* customer_name
* total_spend
* segment

### 2️⃣ Segment-wise Customer Statistics

Grouped customers by segment and calculated counts.

**Output:**

* segment
* customer_count

### 3️⃣ MLlib Bucketizer

Applied Bucketizer to divide spending values into predefined ranges.

**Output:**

* customer_name
* total_spend
* bucket

### 4️⃣ Quantile-based Segmentation

Segmented customers based on data distribution using quantiles.

**Output:**

* customer_name
* total_spend
* quantile_segment

### 5️⃣ Window-based Ranking

Used window functions to rank customers based on spending.

**Output:**

* customer_name
* total_spend
* rank_percentage

### 6️⃣ Method Comparison

Compared segmentation outputs generated using different techniques.

**Output:**

* Segmentation comparison results
* Customer distribution across methods

---

## 🛠️ Technologies Used

* 🐍 Python 3.8
* ⚡ PySpark 3.5.5
* 🗄️ SQL
* 🌐 Spark Playground
* 🤖 Spark MLlib

---

## 📁 Project Structure

```text
phase4a/
├── phase4a_queries.sql
├── phase4a_segmentation.py
├── screenshots/
└── README.md
```

---

## 🎯 Learning Outcomes

Through this phase, I learned:

* Customer segmentation concepts
* Fixed-rule bucketing
* Conditional logic using `when()`
* SQL CASE statement equivalents in PySpark
* Spark MLlib Bucketizer
* Quantile-based segmentation
* Window functions and ranking
* Comparing segmentation strategies
* SQL to PySpark conversion techniques

---

## 💡 Key Insights

* Continuous values are often converted into categories for easier business analysis.
* Fixed thresholds are simple and business-friendly but may become outdated over time.
* Quantile-based segmentation adapts automatically to changing data distributions.
* Bucketizer is useful when predefined ranges are available.
* Window-based ranking helps compare customers relative to one another.

---

## ✅ Conclusion

This phase provided hands-on experience with multiple customer segmentation techniques in PySpark. It strengthened my understanding of bucketing strategies, ranking methods, business analytics, and how different segmentation approaches can be applied to support data-driven decision making.
