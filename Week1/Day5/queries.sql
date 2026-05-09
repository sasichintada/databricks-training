-- 1
select employee_name,salary,
row_number() over(order by salary desc) as row_num
from employees;

-- 2
select employee_name,salary,
rank() over(order by salary desc) as rank_num
from employees;

-- 3
select employee_name,salary,
dense_rank() over(order by salary desc) as dense_rank_num
from employees;

-- 4
select employee_name,salary
from(
    select employee_name,salary,
    row_number() over(order by salary desc) as rn
    from employees
) a
where rn<=3;

-- 5
select employee_name,department,salary,
rank() over(partition by department order by salary desc) as dept_rank
from employees;

-- 6
select employee_name,department,salary,
max(salary) over(partition by department) as highest_salary
from employees;

-- 7
select order_id,order_date,total_amount,
sum(total_amount) over(order by order_date) as running_total
from orders;

-- 8
select employee_id,order_date,total_amount,
sum(total_amount) over(
partition by employee_id
order by order_date
) as cumulative_sales
from orders;

-- 9
select customer_id,order_date,total_amount,
lag(total_amount) over(
partition by customer_id
order by order_date
) as previous_order
from orders;

-- 10
select customer_id,order_date,total_amount,
lead(total_amount) over(
partition by customer_id
order by order_date
) as next_order
from orders;

-- 11
select customer_id,order_date,total_amount,
total_amount -
lag(total_amount) over(
partition by customer_id
order by order_date
) as difference
from orders;

-- 12
select order_id,order_date,total_amount,
avg(total_amount) over(
order by order_date
rows between 2 preceding and current row
) as moving_avg
from orders;

-- 13
select employee_name,salary,
ntile(4) over(order by salary desc) as quartile
from employees;

-- 14
select *
from(
    select *,
    row_number() over(
    partition by customer_id
    order by order_date
    ) as rn
    from orders
) a
where rn=1;

-- 15
select *
from(
    select *,
    row_number() over(
    partition by customer_id
    order by order_date desc
    ) as rn
    from orders
) a
where rn=1;

