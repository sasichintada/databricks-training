--Group By Quries
--Q21
select department_id,sum(salary) from Employee group  by department_id;
--Q22
select department_id,avg(age) from Employee group by department_id;
--Q23
select year(hire_date),count(*) from Employee group by year(hire_date) ;
--Q24
select department_id,max(salary) AS highest_salary from Employee group by department_id ;
--Q25
select department_id,avg(salary) AS average_salary from Employee group by department_id order by avg(salary) DESC limit 1;

---Having Queries
--Q26
select department_id,count(*) AS count_employee from Employee
group by department_id 
having count(*)>2;
--Q27
select department_id,avg(salary) AS average_salary from Employee 
group by department_id 
having avg(salary)>55000;
--Q28
select year(hire_date) AS hire_year,count(*) AS employee_count from Employee
group by YEAR(hire_date)
having count(*) > 1;
--Q29
select department_id,sum(salary) as total_salary from Employee 
group by department_id 
having sum(salary) <100000;
--Q30
select department_id,max(salary) as maximum_salary from Employee 
group by department_id 
having max(salary) >75000;

---Order By Queries
--Q31
select * from Employee
order by salary ASC;
--Q32
select * from Employee
order by age DESC;
--Q33
select * from Employee
order by hire_date ASC;
--Q34
select * from Employee
order by department_id,salary;
--Q35
select department_id,sum(salary) AS total_salary from Employee
group by department_id
order by total_salary;

---Join Queries
--Q36
select Employee.name,Department.name from Employee
join Department
on Employee.department_id = Department.department_id;
--Q37
select Project.name, Department.name from Project
join Department
on Project.department_id = Department.department_id;
--Q38
select Employee.name,Project.name from Employee
join Project
on Employee.department_id = Project.department_id;
--Q39
select Employee.name,Department.name from Employee
left join Department
on Employee.department_id = Department.department_id;
--Q40
select Department.name,Employee.name from Department
left join Employee
on Department.department_id = Employee.department_id;
--Q41
select Employee.name from Employee
left join Project
on Employee.department_id = Project.department_id
where Project.project_id is NULL;
--Q42
select Employee.name,count(Project.project_id) as project_count from Employee
left join Project
on Employee.department_id = Project.department_id
group by Employee.name;
--Q43
select Department.name from Department
left join Employee
on Department.department_id = Employee.department_id
where Employee.emp_id is NULL;
--Q44
select name from Employee
where department_id = (
    select department_id from Employee
    where name = 'John Doe'
);
--Q45
select Department.name,avg(Employee.salary) AS average_salary from Employee
join Department
on Employee.department_id = Department.department_id
group by Department.name
order by avg(Employee.salary) DESC
limit 1;