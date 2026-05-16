-- Q1 Employee Classification
SELECT emp_name,
ROUND(base_salary + IFNULL(bonus,0)) AS total_income,
YEAR(joining_date) AS join_year,
CASE
WHEN TIMESTAMPDIFF(YEAR,joining_date,CURDATE()) > 7 THEN 'Senior'
WHEN TIMESTAMPDIFF(YEAR,joining_date,CURDATE()) BETWEEN 4 AND 7 THEN 'Mid'
ELSE 'Junior'
END AS level
FROM employee_payments;


-- Q2 Delivery Analysis
SELECT customer_name,
DATEDIFF(IFNULL(delivery_date,CURDATE()),order_date) AS days,
CASE
WHEN delivery_date IS NULL THEN 'Pending'
WHEN DATEDIFF(delivery_date,order_date)=0 THEN 'Same-day'
WHEN DATEDIFF(delivery_date,order_date)>3 THEN 'Delayed'
ELSE 'Normal'
END AS status
FROM orders_delivery;


-- Q3 Spending
SELECT cust_name,
MONTHNAME(purchase_date) AS month,
ROUND(purchase_amount) AS amount,
CASE
WHEN purchase_amount > 15000 THEN 'High'
WHEN purchase_amount BETWEEN 8000 AND 15000 THEN 'Medium'
ELSE 'Low'
END AS type
FROM customer_spending;


-- Q4 Subscription
SELECT SUBSTRING_INDEX(user_email,'@',-1) AS domain,
DATEDIFF(end_date,CURDATE()) AS days_left,
CASE
WHEN end_date < CURDATE() THEN 'Expired'
WHEN DATEDIFF(end_date,CURDATE()) <= 30 THEN 'Expiring'
ELSE 'Active'
END AS status
FROM subscriptions;


-- Q5 Loan
SELECT customer_name,
ROUND(loan_amount * interest_rate/1200) AS emi,
CASE
WHEN interest_rate > 9 THEN 'High'
WHEN interest_rate >= 8 THEN 'Medium'
ELSE 'Low'
END AS risk
FROM loan_details;


-- Q6 Attendance
SELECT emp_name,
ROUND(present_days/total_days*100) AS percent,
CASE
WHEN (present_days/total_days)*100 >= 90 THEN 'Excellent'
WHEN (present_days/total_days)*100 >= 75 THEN 'Average'
ELSE 'Poor'
END AS status
FROM attendance;


-- Q7 Product
SELECT product_name,
ABS(mrp-selling_price) AS discount,
CASE
WHEN selling_price < mrp THEN 'Valid'
WHEN selling_price > mrp THEN 'Overpriced'
ELSE 'No Discount'
END AS status
FROM product_sales;


-- Q8 Insurance
SELECT holder_name,
DATEDIFF(policy_end,CURDATE()) AS remaining,
CASE
WHEN policy_end < CURDATE() THEN 'Expired'
WHEN TIMESTAMPDIFF(YEAR,policy_start,policy_end) >= 3 THEN 'Long'
ELSE 'Mid'
END AS type
FROM insurance_policies;


-- Q9 Salary Revision
SELECT emp_name,
CASE
WHEN rating=5 THEN current_salary*0.2
WHEN rating=4 THEN current_salary*0.1
ELSE 0
END AS increment
FROM salary_revision;


-- Q10 Bank
SELECT customer_name,
ABS(balance) AS balance,
CASE
WHEN balance < 0 THEN 'Overdrawn'
WHEN DATEDIFF(CURDATE(),last_transaction) > 365 THEN 'Dormant'
ELSE 'Active'
END AS status
FROM bank_accounts;