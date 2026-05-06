-- Basic Queries
---Q1 
SELECT * FROM Employee;
---Q2
select name ,salary from Employee;
---Q3
select * from Employee where age>30;
---Q4
select name from Department;
---Q5
select * from Employee where department_id=1;

---String Matching Queries
--Q6 
select * from Employee where name LIKE 'J%';
--Q7
select * from Employee where name LIKE '%e';
--Q8
select * from Employee where name LIKE '%a%';
--Q9
select * from Employee where name LIKE '_________';
--Q10
select * from Employee where name LIKE '_o%';

---Data Queries
--Q11
select * from Employee where Year(hire_date)=2020;
--Q12
select * from Employee where month(hire_date)=1;
--Q13
select * from Employee where hire_date<'2019-01-01';
--Q14
select * from Employee where hire_date>='2021-03-01';
--Q15
select * from Employee where hire_date>=CURDATE()- INTERVAL 2 year;

---Aggregate Functions
--Q16
select sum(salary) from Employee
--Q17
select avg(salary) from Employee
--Q18
select min(salary) from Employee
--Q19
select department_id, count(*) from Employee GROUP BY department_id;
--Q20
select department_id,avg(salary) from Employee group by department_id;






