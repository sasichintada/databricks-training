-- LEVEL 1
SELECT * FROM Employees WHERE salary IS NULL;
SELECT * FROM Orders WHERE discount IS NOT NULL;
SELECT * FROM Products WHERE category IS NULL;
SELECT COUNT(*) AS null_managers FROM Employees WHERE manager_id IS NULL;

-- LEVEL 2 (FIXED)
SELECT emp_id,IFNULL(salary,0)AS salary FROM Employees;
SELECT emp_id,IFNULL(bonus,1000)AS bonus FROM Employees;
SELECT order_id,IFNULL(amount,500)AS amount FROM Orders;
SELECT product_id,IFNULL(stock,0)AS stock FROM Products;

-- LEVEL 3
SELECT emp_id,COALESCE(salary,bonus)AS earnings FROM Employees;
SELECT emp_id,COALESCE(salary,bonus,0)AS total_income FROM Employees;
SELECT product_id,COALESCE(price,1000)AS price FROM Products;
SELECT customer_name,COALESCE(amount,discount,0)AS payment FROM Orders;

-- LEVEL 4
SELECT emp_id,NULLIF(salary,0)AS salary FROM Employees;
SELECT order_id,NULLIF(discount,0)AS discount FROM Orders;
SELECT order_id,amount/NULLIF(discount,0)AS safe_division FROM Orders;
SELECT order_id,NULLIF(coupon_code,'DISC10')AS coupon FROM Orders;

-- LEVEL 5
SELECT emp_id,COALESCE(salary,0)+COALESCE(bonus,0)AS total_earnings
FROM Employees;
SELECT * FROM Employees WHERE salary IS NULL AND bonus IS NULL;
SELECT * FROM Products WHERE price IS NULL AND category IS NOT NULL;
SELECT * FROM Orders WHERE amount IS NULL AND discount IS NULL;

-- LEVEL 6
SELECT emp_id,COALESCE(salary,bonus,1000)AS income FROM Employees;
SELECT order_id,amount-COALESCE(discount,0)AS final_amount FROM Orders;
SELECT emp_id FROM Employees WHERE salary IS NULL AND manager_id IS NOT NULL;