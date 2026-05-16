1. SELECT CURDATE()AS todayDate,CURRENT_TIME()AS currentTime,NOW()AS currentDateTime;

2. SELECT order_id,YEAR(order_date)AS year,MONTH(order_date)AS month,DAY(order_date)AS day FROM orders;

3. SELECT order_id,MONTHNAME(order_date)AS month_name,DAYNAME(order_date)AS day_name FROM orders;

4. SELECT * FROM orders WHERE DAYNAME(order_date)IN('Saturday','Sunday');

5. SELECT * FROM orders WHERE DAYOFWEEK(order_date)BETWEEN 2 AND 6;

6. SELECT order_date,DATE_ADD(order_date,INTERVAL 5 DAY)AS plus_5,DATE_SUB(order_date,INTERVAL 3 DAY)AS minus_3 FROM orders;

7. SELECT order_id,DATEDIFF(delivery_date,order_date)AS delivery_days FROM orders;

8. SELECT order_id,TIMESTAMPDIFF(DAY,order_date,delivery_date)AS days_diff,TIMESTAMPDIFF(MONTH,order_date,delivery_date)AS months_diff FROM orders;

9. SELECT order_id,LAST_DAY(order_date)AS last_day FROM orders;

10. SELECT order_id,DATE_SUB(order_date,INTERVAL DAY(order_date)-1 DAY)AS first_day FROM orders;

11. SELECT order_id,DATE_FORMAT(order_date,'%d-%m-%Y')AS formatted_date FROM orders;

12. SELECT order_id,DATE_FORMAT(order_timestamp,'%d-%m-%Y %H:%i:%s')AS formatted_timestamp FROM orders;

13. SELECT * FROM orders WHERE MONTH(order_date)=1;

14. SELECT * FROM orders WHERE order_date>=CURDATE()-INTERVAL 7 DAY;

15. SELECT order_id,order_date,
CASE WHEN MONTH(order_date)>=4 THEN CONCAT(YEAR(order_date),'-',YEAR(order_date)+1)
ELSE CONCAT(YEAR(order_date)-1,'-',YEAR(order_date))END AS financial_year
FROM orders;