--46. Employee with highest salary
SELECT * FROM Employee WHERE salary=(SELECT MAX(salary) FROM Employee);

--47. Employees whose salary is above average salary
SELECT * FROM Employee WHERE salary>(SELECT AVG(salary) FROM Employee);

--48. Second highest salary
SELECT MAX(salary) AS second_highest_salary FROM Employee WHERE salary<(SELECT MAX(salary) FROM Employee);

--49. Department with most employees
SELECT department_id,COUNT(*) AS total_employees FROM Employee GROUP BY department_id ORDER BY total_employees DESC LIMIT 1;

--50. Employees earning more than department average
SELECT * FROM Employee e WHERE salary>(SELECT AVG(salary) FROM Employee WHERE department_id=e.department_id);

--51. Third highest salary
SELECT DISTINCT salary FROM Employee ORDER BY salary DESC LIMIT 1 OFFSET 2;

--52. Employees older than all employees in HR department
SELECT * FROM Employee WHERE age>(SELECT MAX(age) FROM Employee WHERE department_id=(SELECT department_id FROM Department WHERE name='HR'));

--53. Departments with average salary greater than 55000
SELECT department_id,AVG(salary) AS avg_salary FROM Employee GROUP BY department_id HAVING AVG(salary)>55000;

--54. Employees working in departments with at least 2 projects
SELECT * FROM Employee WHERE department_id IN(SELECT department_id FROM Project GROUP BY department_id HAVING COUNT(project_id)>=2);

--55. Employees hired on same date as Jane Smith
SELECT * FROM Employee WHERE hire_date=(SELECT hire_date FROM Employee WHERE name='Jane Smith');

--56. Total salary of employees hired in 2020
SELECT SUM(salary) AS total_salary FROM Employee WHERE YEAR(hire_date)=2020;

--57. Average salary in each department ordered descending
SELECT department_id,AVG(salary) AS avg_salary FROM Employee GROUP BY department_id ORDER BY avg_salary DESC;

--58. Departments with more than 1 employee and average salary greater than 55000
SELECT department_id,COUNT(*) AS total_employees,AVG(salary) AS avg_salary FROM Employee GROUP BY department_id HAVING COUNT(*)>1 AND AVG(salary)>55000;

--59. Employees hired in last 2 years
SELECT * FROM Employee WHERE hire_date>=DATE_SUB(CURDATE(),INTERVAL 2 YEAR) ORDER BY hire_date;

--60. Total employees and average salary for departments with more than 2 employees
SELECT department_id,COUNT(*) AS total_employees,AVG(salary) AS avg_salary FROM Employee GROUP BY department_id HAVING COUNT(*)>2;

--61. Employee names and salaries above department average
SELECT name,salary FROM Employee e WHERE salary>(SELECT AVG(salary) FROM Employee WHERE department_id=e.department_id);

--62. Employees hired on same date as oldest employee
SELECT name FROM Employee WHERE hire_date=(SELECT hire_date FROM Employee ORDER BY age DESC LIMIT 1);

--63. Department names with total projects
SELECT d.name,COUNT(p.project_id) AS total_projects FROM Department d LEFT JOIN Project p ON d.department_id=p.department_id GROUP BY d.name ORDER BY total_projects DESC;

--64. Highest paid employee in each department
SELECT name,department_id,salary FROM Employee e WHERE salary=(SELECT MAX(salary) FROM Employee WHERE department_id=e.department_id);

--65. Employees older than department average age
SELECT name,salary FROM Employee e WHERE age>(SELECT AVG(age) FROM Employee WHERE department_id=e.department_id);