-- Phase 4: Business Pipeline & Analytics (SQL Queries)

-- Task 1: Daily Sales
-- Output: date, total_sales
SELECT
    sale_date AS date,
    SUM(total_amount) AS total_sales
FROM sales
WHERE total_amount > 0
GROUP BY sale_date
ORDER BY sale_date;

-- Task 2: City-wise Revenue
-- Output: city, total_revenue
SELECT
    c.city,
    SUM(s.total_amount) AS total_revenue
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
WHERE s.total_amount > 0
GROUP BY c.city
ORDER BY total_revenue DESC;

-- Task 3: Top 5 Customers
-- Output: customer_name, total_spend
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(s.total_amount) AS total_spend
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
WHERE s.total_amount > 0
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spend DESC
LIMIT 5;

-- Task 4: Repeat Customers (>1 order)
-- Output: customer_id, order_count
SELECT
    customer_id,
    COUNT(*) AS order_count
FROM sales
WHERE total_amount > 0
GROUP BY customer_id
HAVING COUNT(*) > 1
ORDER BY order_count DESC;

-- Task 5: Customer Segmentation
-- Output: customer_name, total_spend, segment
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(s.total_amount) AS total_spend,
    CASE
        WHEN SUM(s.total_amount) > 10000 THEN 'Gold'
        WHEN SUM(s.total_amount) BETWEEN 5000 AND 10000 THEN 'Silver'
        ELSE 'Bronze'
    END AS segment
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
WHERE s.total_amount > 0
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spend DESC;

-- Task 6: Final Reporting Table
-- Output: customer_name, city, total_spend, order_count, segment
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.city,
    SUM(s.total_amount) AS total_spend,
    COUNT(s.sale_id) AS order_count,
    CASE
        WHEN SUM(s.total_amount) > 10000 THEN 'Gold'
        WHEN SUM(s.total_amount) BETWEEN 5000 AND 10000 THEN 'Silver'
        ELSE 'Bronze'
    END AS segment
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
WHERE s.total_amount > 0
GROUP BY c.customer_id, c.first_name, c.last_name, c.city
ORDER BY total_spend DESC;