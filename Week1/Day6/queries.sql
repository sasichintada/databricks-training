-- 16
select employee_name,department,salary,
avg(salary) over(partition by department) as avg_salary
from employees;

-- 17
select *
from(
    select employee_name,department,salary,
    avg(salary) over(partition by department) as avg_salary
    from employees
) a
where salary>avg_salary;

-- 18
select employee_name,department,salary,
sum(salary) over(partition by department) as department_payroll
from employees;

-- 19
select employee_name,department,salary,
round(
salary*100.0/
sum(salary) over(partition by department),2
) as percentage_share
from employees;

-- 20
select employee_name,department,
count(*) over() as total_employees
from employees;

-- 21
with employee_sales as(
    select employee_id,
    sum(total_amount) as total_sales
    from orders
    group by employee_id
)
select *
from employee_sales;

-- 22
with employee_sales as(
    select employee_id,
    sum(total_amount) as total_sales
    from orders
    group by employee_id
)
select *
from employee_sales
where total_sales>(
    select avg(total_sales)
    from employee_sales
);

-- 23
with customer_spending as(
    select customer_id,
    sum(total_amount) as total_spent
    from orders
    group by customer_id
)
select customer_id,total_spent,
rank() over(order by total_spent desc) as customer_rank
from customer_spending;

-- 24
with recursive numbers as(
    select 1 as n
    union all
    select n+1
    from numbers
    where n<10
)
select *
from numbers;

-- 25
with recursive emp_tree as(
    select employee_id,
           employee_name,
           manager_id,
           1 as level
    from employees
    where manager_id is null
    union all
    select e.employee_id,
           e.employee_name,
           e.manager_id,
           t.level + 1
    from employees e
    join emp_tree t
    on e.manager_id = t.employee_id
)
select *
from emp_tree;

-- 26
with avg_orders as(
    select avg(total_amount) as avg_amount
    from orders
)
select *
from orders
where total_amount>(
    select avg_amount
    from avg_orders
);

-- 27
with customer_totals as(
    select customer_id,
    sum(total_amount) as total_spent
    from orders
    group by customer_id
)
select customer_id,total_spent,
rank() over(order by total_spent desc) as rank_num
from customer_totals;

-- 28
select *
from(
    select employee_name,
           department,
           salary,
           dense_rank() over(
           partition by department
           order by salary desc
           ) as rn
    from employees
) a
where rn=2;

-- 29
select employee_name,
       department,
       salary,
       max(salary) over(partition by department)-salary
       as salary_difference
from employees;

-- 30
with employee_sales as(
    select e.employee_id,
           e.employee_name,
           e.department,
           sum(o.total_amount) as total_sales
    from employees e
    join orders o
    on e.employee_id=o.employee_id
    group by e.employee_id,
             e.employee_name,
             e.department
),
ranked_employees as(
    select *,
    rank() over(
    partition by department
    order by total_sales desc
    ) as rn
    from employee_sales
)
select *
from ranked_employees
where rn=1;

-- Bonus
with monthly_sales as(
    select to_char(order_date,'YYYY-MM') as month,
           sum(total_amount) as total_sales
    from orders
    group by to_char(order_date,'YYYY-MM')
),
sales_report as(
    select month,
           total_sales,
           sum(total_sales) over(
           order by month
           ) as running_total,
           lag(total_sales) over(
           order by month
           ) as previous_sales
    from monthly_sales
)
select month,
       total_sales,
       running_total,
       previous_sales,
       round(
       ((total_sales-previous_sales)
/previous_sales)*100,2
       ) as growth_percentage
from sales_report;