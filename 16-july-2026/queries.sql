-- INNER JOIN

-- Q41
-- Find highest-paid employee in every department.

SELECT
    d.DepartmentName,
    e.EmployeeName,
    e.Salary
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE (e.DepartmentID, e.Salary) IN (
    SELECT DepartmentID, MAX(Salary)
    FROM Employees
    WHERE DepartmentID IS NOT NULL
    GROUP BY DepartmentID
);

-- Q42
-- Find department having highest average salary.

SELECT
    d.DepartmentName,
    AVG(e.Salary) AS AverageSalary
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY AverageSalary DESC
LIMIT 1;

-- Q43
-- Find employee working on highest-budget project.

SELECT
    e.EmployeeName,
    p.ProjectName,
    p.Budget
FROM Employees e
INNER JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects p
ON ep.ProjectID = p.ProjectID
WHERE p.Budget = (
    SELECT MAX(Budget)
    FROM Projects
);

-- Q44
-- Show managers and their employees.

SELECT
    m.EmployeeName AS Manager,
    e.EmployeeName AS Employee
FROM Employees e
INNER JOIN Employees m
ON e.ManagerID = m.EmployeeID;

-- Q45
-- Find employees working on more than one project.

SELECT
    e.EmployeeName,
    COUNT(ep.ProjectID) AS TotalProjects
FROM Employees e
INNER JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
GROUP BY e.EmployeeID, e.EmployeeName
HAVING COUNT(ep.ProjectID) > 1;

-- LEFT JOIN

-- Q46
-- Find employees not assigned to any project.

SELECT
    e.EmployeeID,
    e.EmployeeName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
WHERE ep.ProjectID IS NULL;

-- Q47
-- Find departments having no projects.

SELECT
    d.DepartmentID,
    d.DepartmentName
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID
WHERE p.ProjectID IS NULL;

-- Q48
-- Find departments having employees but no projects.

SELECT DISTINCT
    d.DepartmentID,
    d.DepartmentName
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID
INNER JOIN Employees e
ON d.DepartmentID = e.DepartmentID
WHERE p.ProjectID IS NULL;

-- Q49
-- Show employees with project count.

SELECT
    e.EmployeeName,
    COUNT(ep.ProjectID) AS ProjectCount
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
GROUP BY e.EmployeeID, e.EmployeeName
ORDER BY e.EmployeeID;

-- Q50
-- Show project count department-wise including zero.

SELECT
    d.DepartmentName,
    COUNT(p.ProjectID) AS ProjectCount
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY d.DepartmentID;

-- RIGHT JOIN

-- Q51
-- Find projects without employees.

SELECT
    p.ProjectID,
    p.ProjectName
FROM EmployeeProjects ep
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID
WHERE ep.EmployeeID IS NULL;

-- Q52
-- Find departments without projects.

SELECT
    d.DepartmentID,
    d.DepartmentName
FROM Projects p
RIGHT JOIN Departments d
ON p.DepartmentID = d.DepartmentID
WHERE p.ProjectID IS NULL;

-- Q53
-- Find projects whose department doesn't exist.

SELECT
    p.ProjectID,
    p.ProjectName
FROM Departments d
RIGHT JOIN Projects p
ON d.DepartmentID = p.DepartmentID
WHERE d.DepartmentID IS NULL;

-- Q54
-- Find orphan employee records.

SELECT
    e.EmployeeID,
    e.EmployeeName,
    e.DepartmentID
FROM Departments d
RIGHT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
WHERE d.DepartmentID IS NULL;

-- Q55
-- Display every department and employee count.

SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS EmployeeCount
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY d.DepartmentID;

-- LEFT ANTI JOIN

-- Q56
-- Find employees without departments.

SELECT
    e.EmployeeID,
    e.EmployeeName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;

-- Q57
-- Find departments without employees.

SELECT
    d.DepartmentID,
    d.DepartmentName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
WHERE e.EmployeeID IS NULL;

-- Q58
-- Find employees without projects.

SELECT
    e.EmployeeID,
    e.EmployeeName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
WHERE ep.ProjectID IS NULL;

-- Q59
-- Find departments without projects.

SELECT
    d.DepartmentID,
    d.DepartmentName
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID
WHERE p.ProjectID IS NULL;

-- Q60
-- Find projects without departments.

SELECT
    p.ProjectID,
    p.ProjectName
FROM Projects p
LEFT JOIN Departments d
ON p.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;

-- RIGHT ANTI JOIN

-- Q61
-- Find departments without employees.

SELECT
    d.DepartmentID,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL;

-- Q62
-- Find projects without employees.

SELECT
    p.ProjectID,
    p.ProjectName
FROM EmployeeProjects ep
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID
WHERE ep.EmployeeID IS NULL;

-- Q63
-- Find departments without projects.

SELECT
    d.DepartmentID,
    d.DepartmentName
FROM Projects p
RIGHT JOIN Departments d
ON p.DepartmentID = d.DepartmentID
WHERE p.ProjectID IS NULL;

-- Q64
-- Find employees whose departments don't exist.

SELECT
    e.EmployeeID,
    e.EmployeeName,
    e.DepartmentID
FROM Departments d
RIGHT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
WHERE d.DepartmentID IS NULL;

-- Q65
-- Find projects whose departments don't exist.

SELECT
    p.ProjectID,
    p.ProjectName,
    p.DepartmentID
FROM Departments d
RIGHT JOIN Projects p
ON d.DepartmentID = p.DepartmentID
WHERE d.DepartmentID IS NULL;

-- FULL ANTI JOIN

-- Q66
-- Find all unmatched employees and departments.

SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL

UNION

SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL;

-- Q67
-- Find all unmatched departments and employees.

SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
WHERE e.EmployeeID IS NULL

UNION

SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
RIGHT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
WHERE d.DepartmentID IS NULL;

-- Q68
-- Find projects without departments and departments without projects.

SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects p
LEFT JOIN Departments d
ON p.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL

UNION

SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects p
RIGHT JOIN Departments d
ON p.DepartmentID = d.DepartmentID
WHERE p.ProjectID IS NULL;

-- Q69
-- Find employees without projects and projects without employees.

SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p
ON ep.ProjectID = p.ProjectID
WHERE ep.ProjectID IS NULL

UNION

SELECT
    e.EmployeeName,
    p.ProjectName
FROM EmployeeProjects ep
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID
LEFT JOIN Employees e
ON ep.EmployeeID = e.EmployeeID
WHERE ep.EmployeeID IS NULL;

-- Q70
-- Show all orphan records across Employees and Departments.

SELECT
    e.EmployeeID,
    e.EmployeeName,
    e.DepartmentID,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL

UNION

SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentID,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL;


-- Expert Level Challenges

-- Q71
-- Find the department with the highest project budget.

SELECT
    d.DepartmentName,
    p.ProjectName,
    p.Budget
FROM Projects p
INNER JOIN Departments d
ON p.DepartmentID = d.DepartmentID
ORDER BY p.Budget DESC
LIMIT 1;

-- Q72
-- Find employees working in departments without projects.

SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID
WHERE p.ProjectID IS NULL;

-- Q73
-- Find projects having multiple employees.

SELECT
    p.ProjectName,
    COUNT(ep.EmployeeID) AS TotalEmployees
FROM Projects p
INNER JOIN EmployeeProjects ep
ON p.ProjectID = ep.ProjectID
GROUP BY p.ProjectID, p.ProjectName
HAVING COUNT(ep.EmployeeID) > 1;

-- Q74
-- Find employees assigned to projects outside their own department.

SELECT
    e.EmployeeName,
    d.DepartmentName AS EmployeeDepartment,
    p.ProjectName
FROM Employees e
INNER JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects p
ON ep.ProjectID = p.ProjectID
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID <> p.DepartmentID;

-- Q75
-- Find departments where every employee is assigned to a project.

SELECT
    d.DepartmentName
FROM Departments d
INNER JOIN Employees e
ON d.DepartmentID = e.DepartmentID
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
GROUP BY d.DepartmentID, d.DepartmentName
HAVING COUNT(e.EmployeeID) = COUNT(ep.EmployeeID);

-- Q76
-- Find employees who share the same manager.

SELECT
    m.EmployeeName AS Manager,
    e.EmployeeName
FROM Employees e
INNER JOIN Employees m
ON e.ManagerID = m.EmployeeID
WHERE e.ManagerID IN (
    SELECT ManagerID
    FROM Employees
    WHERE ManagerID IS NOT NULL
    GROUP BY ManagerID
    HAVING COUNT(*) > 1
)
ORDER BY m.EmployeeName;

-- Q77
-- Find departments with no managers.

SELECT
    d.DepartmentName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
AND e.EmployeeID IN (
    SELECT DISTINCT ManagerID
    FROM Employees
    WHERE ManagerID IS NOT NULL
)
WHERE e.EmployeeID IS NULL;

-- Q78
-- Find managers with more than three employees.

SELECT
    m.EmployeeName AS Manager,
    COUNT(e.EmployeeID) AS EmployeeCount
FROM Employees e
INNER JOIN Employees m
ON e.ManagerID = m.EmployeeID
GROUP BY m.EmployeeID, m.EmployeeName
HAVING COUNT(e.EmployeeID) > 3;

-- Q79
-- Find employees hired before their manager.

SELECT
    e.EmployeeName,
    e.JoiningDate AS EmployeeJoiningDate,
    m.EmployeeName AS Manager,
    m.JoiningDate AS ManagerJoiningDate
FROM Employees e
INNER JOIN Employees m
ON e.ManagerID = m.EmployeeID
WHERE e.JoiningDate < m.JoiningDate;

-- Q80
-- Create one report showing:
-- Employee Name
-- Department
-- Project
-- Budget
-- Manager Name
-- Salary
-- Department Location

SELECT
    e.EmployeeName,
    d.DepartmentName,
    p.ProjectName,
    p.Budget,
    m.EmployeeName AS ManagerName,
    e.Salary,
    d.Location
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p
ON ep.ProjectID = p.ProjectID
LEFT JOIN Employees m
ON e.ManagerID = m.EmployeeID
ORDER BY e.EmployeeID;