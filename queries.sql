-- Basic INNER JOIN

-- Q1
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q2
SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects p
INNER JOIN Departments d
ON p.DepartmentID = d.DepartmentID;

-- Q3
SELECT
    e.EmployeeName,
    p.ProjectName
FROM EmployeeProjects ep
INNER JOIN Employees e
ON ep.EmployeeID = e.EmployeeID
INNER JOIN Projects p
ON ep.ProjectID = p.ProjectID;

-- Q4
SELECT
    e.EmployeeName,
    e.Salary,
    d.Location
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q5
SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
INNER JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects p
ON ep.ProjectID = p.ProjectID;


-- Basic LEFT JOIN

-- Q6
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q7
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID;

-- Q8
SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects p
LEFT JOIN Departments d
ON p.DepartmentID = d.DepartmentID;

-- Q9
SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p
ON ep.ProjectID = p.ProjectID;

-- Q10
SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p
ON ep.ProjectID = p.ProjectID
WHERE ep.ProjectID IS NULL;


-- Basic RIGHT JOIN

-- Q11
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q12
SELECT
    p.ProjectName,
    e.EmployeeName
FROM EmployeeProjects ep
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID
LEFT JOIN Employees e
ON ep.EmployeeID = e.EmployeeID;

-- Q13
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q14
SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects p
RIGHT JOIN Departments d
ON p.DepartmentID = d.DepartmentID;

-- Q15
SELECT
    p.ProjectName,
    e.EmployeeName
FROM EmployeeProjects ep
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID
LEFT JOIN Employees e
ON ep.EmployeeID = e.EmployeeID;


-- Basic FULL JOIN


-- Q16
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID

UNION

SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;


-- Q17
SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID

UNION

SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
RIGHT JOIN Projects p
ON d.DepartmentID = p.DepartmentID;


-- Q18
SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p
ON ep.ProjectID = p.ProjectID

UNION

SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
RIGHT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID;


-- Q19
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID

UNION

SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
RIGHT JOIN Employees e
ON d.DepartmentID = e.DepartmentID;


-- Q20
SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID

UNION

SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
RIGHT JOIN Projects p
ON d.DepartmentID = p.DepartmentID;

-- Intermediate INNER JOIN

-- Q21
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'IT';

-- Q22
SELECT
    e.EmployeeName,
    p.ProjectName,
    p.Budget
FROM Employees e
INNER JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects p
ON ep.ProjectID = p.ProjectID
WHERE p.Budget > 200000;

-- Q23
SELECT
    e.EmployeeName,
    d.DepartmentName,
    p.ProjectName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
INNER JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects p
ON ep.ProjectID = p.ProjectID;

-- Q24
SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS TotalEmployees
FROM Departments d
INNER JOIN Employees e
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

-- Q25
SELECT
    d.DepartmentName,
    ROUND(AVG(e.Salary),2) AS AverageSalary
FROM Departments d
INNER JOIN Employees e
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;


-- Intermediate LEFT JOIN

-- Q26
SELECT
    e.EmployeeID,
    e.EmployeeName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;

-- Q27
SELECT
    e.EmployeeID,
    e.EmployeeName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
WHERE ep.ProjectID IS NULL;

-- Q28
SELECT
    d.DepartmentID,
    d.DepartmentName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
WHERE e.EmployeeID IS NULL;

-- Q29
SELECT
    p.ProjectID,
    p.ProjectName
FROM Projects p
LEFT JOIN Departments d
ON p.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;

-- Q30
SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS TotalEmployees
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;


-- Intermediate RIGHT JOIN

-- Q31
SELECT
    d.DepartmentID,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL;

-- Q32
SELECT
    p.ProjectID,
    p.ProjectName
FROM EmployeeProjects ep
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID
WHERE ep.EmployeeID IS NULL;

-- Q33
SELECT
    d.DepartmentName,
    p.ProjectName
FROM Projects p
RIGHT JOIN Departments d
ON p.DepartmentID = d.DepartmentID;

-- Q34
SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS TotalEmployees
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;

-- Q35
SELECT
    p.ProjectName,
    e.EmployeeName
FROM EmployeeProjects ep
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID
LEFT JOIN Employees e
ON ep.EmployeeID = e.EmployeeID;


-- Intermediate FULL JOIN (MySQL)

-- Q36
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID

UNION

SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
RIGHT JOIN Employees e
ON d.DepartmentID = e.DepartmentID;

-- Q37
SELECT
    e.EmployeeName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;

-- Q38
SELECT
    d.DepartmentName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
WHERE e.EmployeeID IS NULL;

-- Q39
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID

UNION

SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q40
SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID

UNION

SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
RIGHT JOIN Projects p
ON d.DepartmentID = p.DepartmentID;
