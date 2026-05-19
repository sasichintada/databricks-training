-- 1
SELECT emp_name, salary,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS rn
FROM employees;

-- 2
SELECT emp_name, department, salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS rn
FROM employees;

-- 3
SELECT emp_name, join_date,
ROW_NUMBER() OVER(ORDER BY join_date DESC) AS rn
FROM employees;

-- 4
SELECT emp_name, department, join_date,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY join_date ASC) AS rn
FROM employees;

-- 5
SELECT order_id, order_date,
ROW_NUMBER() OVER(ORDER BY order_date) AS rn
FROM orders;

-- 6
SELECT city, order_amount,
ROW_NUMBER() OVER(PARTITION BY city ORDER BY order_amount DESC) AS rn
FROM orders;

-- 7
SELECT emp_name, salary,
ROW_NUMBER() OVER(ORDER BY salary ASC) AS rn
FROM employees;

-- 8
SELECT emp_name, department,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY emp_name ASC) AS rn
FROM employees;

-- 9
SELECT emp_name, salary,
RANK() OVER(ORDER BY salary DESC) AS rnk
FROM employees;

-- 10
SELECT emp_name, department, salary,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rnk
FROM employees;

-- 11
SELECT emp_name, join_date,
RANK() OVER(ORDER BY join_date DESC) AS rnk
FROM employees;

-- 12
SELECT order_id, order_amount,
RANK() OVER(ORDER BY order_amount DESC) AS rnk
FROM orders;

-- 13
SELECT city, order_amount,
RANK() OVER(PARTITION BY city ORDER BY order_amount DESC) AS rnk
FROM orders;

-- 14
SELECT emp_name, department, salary,
RANK() OVER(PARTITION BY department ORDER BY salary ASC) AS rnk
FROM employees;

-- 15
SELECT emp_name,
RANK() OVER(ORDER BY emp_name ASC) AS rnk
FROM employees;

-- 16
SELECT city, order_date,
RANK() OVER(PARTITION BY city ORDER BY order_date) AS rnk
FROM orders;

-- 17
SELECT emp_name, salary,
DENSE_RANK() OVER(ORDER BY salary DESC) AS drnk
FROM employees;

-- 18
SELECT emp_name, department, salary,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS drnk
FROM employees;

-- 19
SELECT emp_name, join_date,
DENSE_RANK() OVER(ORDER BY join_date) AS drnk
FROM employees;

-- 20
SELECT order_id, order_amount,
DENSE_RANK() OVER(ORDER BY order_amount DESC) AS drnk
FROM orders;

-- 21
SELECT city, order_amount,
DENSE_RANK() OVER(PARTITION BY city ORDER BY order_amount DESC) AS drnk
FROM orders;

-- 22
SELECT emp_name, salary,
DENSE_RANK() OVER(ORDER BY salary ASC) AS drnk
FROM employees;

-- 23
SELECT emp_name, department, join_date,
DENSE_RANK() OVER(PARTITION BY department ORDER BY join_date) AS drnk
FROM employees;

-- 24
SELECT order_id, order_date,
DENSE_RANK() OVER(ORDER BY order_date) AS drnk
FROM orders;