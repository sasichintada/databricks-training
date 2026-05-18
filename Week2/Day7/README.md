

# 🚀 REGEX BASIC ASSIGNMENT (MySQL)

---

## 📘 Overview

This assignment focuses on **Regular Expression (Regex) and String Manipulation functions in MySQL**.
It is designed to help understand how to extract, transform, and clean unstructured data stored in database columns.

The dataset contains mixed-format values such as:

* Employee codes
* Emails
* Phone numbers
* Alphanumeric strings
* Embedded numeric patterns

---

## 🎯 Objective

To learn and apply SQL techniques for:

* Pattern matching using Regex
* Extracting numeric and alphabetic sequences
* Email parsing and validation
* Phone number processing
* String slicing and manipulation
* Real-world data cleaning operations

---

## 🧱 Dataset Overview

The table contains the following fields:

* **id** → Unique identifier
* **full_text** → Encoded employee/project string
* **email** → Email addresses
* **phone** → International phone numbers
* **mixed_value** → Alphanumeric mixed strings

The dataset is intentionally designed with **structured + unstructured patterns** for regex practice.

---
# 🛠️ Tools & Environment

| Tool      | Purpose                         |
| --------- | ------------------------------- |
| MySQL     | Database Management             |
| DB Fiddle | Query Testing & Execution       |
| GitHub    | Documentation & Version Control |

---

# 📁 Files Included

| File        | Description                    |
| ----------- | ------------------------------ |
| schema.sql  | Table creation and sample data |
| queries.sql | NULL function queries          |
| output.txt  | Query outputs                  |
| README.md   | Project documentation          |

---

## 🔍 Core Concepts Covered

---

### 🔹 Regular Expressions (Regex)

Used to extract patterns from strings such as:

* Numbers
* Alphabets
* Combined sequences
* Fixed-length patterns
* Position-based extraction (start/end/middle)

---


### 🔹 String Functions

Includes:

* LEFT / RIGHT extraction
* SUBSTRING operations
* LOCATE function
* SUBSTRING_INDEX usage

---

### 🔹 Email Parsing Techniques

Covers extraction of:

* Username part (before @)
* Domain name (after @)
* Top-level domain (after last dot)

---

### 🔹 Phone Number Processing

Used for extracting:

* Country codes
* Numeric prefixes
* Standardized number formats

---

## 📊 Problem Categories

---

### 🔹 Pattern Extraction from Mixed Values

* Extract numbers at the beginning of strings
* Extract numbers at the end of strings
* Extract embedded numeric sequences
* Extract alphabetic sequences

---

### 🔹 Position-Based String Extraction

* First character extraction
* Last character extraction
* Fixed-length substring extraction

---

### 🔹 Numeric Pattern Detection

* Single digit extraction
* Double-digit extraction
* Multi-digit sequence detection

---

### 🔹 Email Data Processing

* Username extraction
* Domain extraction
* Top-level domain extraction
* Email splitting using delimiters

---

### 🔹 Phone Number Parsing

* Country code extraction
* Removal of special characters
* Standardization of numeric format

---

### 🔹 Employee Code Parsing

* Extract numeric employee ID from structured strings
* Identify country code suffix
* Extract text between separators

---

## 📈 Skills Developed

* Regex pattern design
* String data extraction
* Data cleaning techniques
* Text processing in SQL
* Real-world data transformation
* Logical pattern recognition
* SQL analytical thinking

---

## 🎯 Learning Outcomes

After completing this assignment, you will be able to:

* Extract structured data from unstructured strings
* Use regex for real-world data cleaning
* Parse emails and phone numbers efficiently
* Work with complex string patterns
* Handle mixed-format datasets in SQL
* Build data preprocessing logic

---

## 💡 Key Highlights

* Real-world messy dataset simulation
* Strong focus on regex-based extraction
* Interview-oriented string manipulation problems
* Data cleaning and transformation practice
* Practical SQL text processing skills

---

## 🏁 Conclusion

This assignment strengthens your ability to work with **unstructured data in SQL using Regex and string functions**.

It is highly useful for:

* Data engineering roles
* Backend development
* SQL interviews
* Data cleaning pipelines
* Analytics systems

---

