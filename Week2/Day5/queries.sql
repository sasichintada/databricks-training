-- 1 Manager self join
SELECT e.emp_name,m.emp_name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id=m.emp_id;

-- 2 Employee + Department
SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id=d.dept_id;

-- 3 Employees with managers
SELECT e.emp_name,m.emp_name AS manager
FROM employees e
INNER JOIN employees m ON e.manager_id=m.emp_id;

-- 4 Dept wise employees count
SELECT d.dept_name,COUNT(e.emp_id)AS total
FROM departments d
LEFT JOIN employees e ON d.dept_id=e.dept_id
GROUP BY d.dept_id;

-- 5 Employees without dept
SELECT emp_name
FROM employees
WHERE dept_id IS NULL;

-- 6 Employee + Projects
SELECT e.emp_name,p.project_name
FROM employees e
LEFT JOIN projects p ON e.emp_id=p.emp_id;

-- 7 Employees with projects only
SELECT DISTINCT e.emp_name,p.project_name
FROM employees e
INNER JOIN projects p ON e.emp_id=p.emp_id;

-- 8 All projects + employees
SELECT e.emp_name,p.project_name
FROM employees e
RIGHT JOIN projects p ON e.emp_id=p.emp_id;

-- 9 Salary NULL simulation (no table given)
SELECT e.emp_name,NULL AS salary
FROM employees e;

-- 10 Employee + Dept (same as 2)
SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id=d.dept_id;

-- 11 Departments with employees
SELECT d.dept_name,e.emp_name
FROM departments d
LEFT JOIN employees e ON d.dept_id=e.dept_id;

-- 12 Employees contact NULL
SELECT emp_name,NULL AS contact
FROM employees;

-- 13 FULL JOIN simulation (MySQL)
SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id=d.dept_id
UNION
SELECT e.emp_name,d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id=d.dept_id;

-- 14 Employees without project
SELECT e.emp_name
FROM employees e
LEFT JOIN projects p ON e.emp_id=p.emp_id
WHERE p.emp_id IS NULL;

-- 15 Employees + projects (all)
SELECT e.emp_name,p.project_name
FROM employees e
LEFT JOIN projects p ON e.emp_id=p.emp_id;

-- 16 Projects + employees
SELECT p.project_name,e.emp_name
FROM projects p
LEFT JOIN employees e ON p.emp_id=e.emp_id;

-- 17 Employees with manager + project
SELECT e.emp_name,m.emp_name AS manager,p.project_name
FROM employees e
JOIN employees m ON e.manager_id=m.emp_id
JOIN projects p ON e.emp_id=p.emp_id;

-- 18 Employees with dept only
SELECT e.emp_name,d.dept_name
FROM employees e
JOIN departments d ON e.dept_id=d.dept_id;

-- 19 Multi dept (not applicable, returns normal join)
SELECT e.emp_name,d.dept_name
FROM employees e
JOIN departments d ON e.dept_id=d.dept_id;

-- 20 Departments + employees
SELECT d.dept_name,e.emp_name
FROM departments d
LEFT JOIN employees e ON d.dept_id=e.dept_id;

-- 21 Employee + project but no dept
SELECT e.emp_name,p.project_name
FROM employees e
JOIN projects p ON e.emp_id=p.emp_id
WHERE e.dept_id IS NULL;

-- 22 Dept employee count
SELECT d.dept_name,COUNT(e.emp_id)
FROM departments d
LEFT JOIN employees e ON d.dept_id=e.dept_id
GROUP BY d.dept_id;

-- 23 Employees with manager only
SELECT e.emp_name,m.emp_name AS manager
FROM employees e
JOIN employees m ON e.manager_id=m.emp_id;

-- 24 Employees + manager incl NULL
SELECT e.emp_name,m.emp_name
FROM employees e
LEFT JOIN employees m ON e.manager_id=m.emp_id;

-- 25 Dept wise employee count
SELECT d.dept_name,COUNT(e.emp_id)
FROM departments d
LEFT JOIN employees e ON d.dept_id=e.dept_id
GROUP BY d.dept_name;

-- 26 Dept + employees
SELECT d.dept_name,e.emp_name
FROM departments d
LEFT JOIN employees e ON d.dept_id=e.dept_id;

-- 27 Employees without salary
SELECT emp_name
FROM employees;

-- 28 Employee + projects
SELECT e.emp_name,p.project_name
FROM employees e
LEFT JOIN projects p ON e.emp_id=p.emp_id;

-- 29 Employee + dept + project
SELECT e.emp_name,d.dept_name,p.project_name
FROM employees e
LEFT JOIN departments d ON e.dept_id=d.dept_id
LEFT JOIN projects p ON e.emp_id=p.emp_id;

-- 30 Employees with dept + include NULL
SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id=d.dept_id;