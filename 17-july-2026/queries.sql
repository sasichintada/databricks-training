--Basic Assignment Queries
--UNION
-- 1
SELECT EmployeeName FROM CurrentEmployees
UNION
SELECT EmployeeName FROM FormerEmployees;

-- 2
SELECT Department FROM CurrentEmployees
UNION
SELECT Department FROM FormerEmployees;

-- 3
SELECT CustomerName FROM DomesticCustomers
UNION
SELECT CustomerName FROM InternationalCustomers;

-- 4
SELECT City FROM DomesticCustomers
UNION
SELECT City FROM InternationalCustomers;

-- 5
SELECT Amount FROM OnlineOrders
UNION
SELECT Amount FROM StoreOrders;


--UNION ALL
-- 1
SELECT EmployeeName FROM CurrentEmployees
UNION ALL
SELECT EmployeeName FROM FormerEmployees;

-- 2
SELECT Department FROM CurrentEmployees
UNION ALL
SELECT Department FROM FormerEmployees;

-- 3
SELECT CustomerName FROM DomesticCustomers
UNION ALL
SELECT CustomerName FROM InternationalCustomers;

-- 4
SELECT City FROM DomesticCustomers
UNION ALL
SELECT City FROM InternationalCustomers;

-- 5
SELECT Amount FROM OnlineOrders
UNION ALL
SELECT Amount FROM StoreOrders;

--EXCEPT
-- 1
SELECT EmployeeID, EmployeeName
FROM CurrentEmployees
EXCEPT
SELECT EmployeeID, EmployeeName
FROM FormerEmployees;

-- 2
SELECT EmployeeID, EmployeeName
FROM FormerEmployees
EXCEPT
SELECT EmployeeID, EmployeeName
FROM CurrentEmployees;

-- 3
SELECT CustomerID, CustomerName
FROM DomesticCustomers
EXCEPT
SELECT CustomerID, CustomerName
FROM InternationalCustomers;

-- 4
SELECT OrderID, CustomerID, Amount
FROM OnlineOrders
EXCEPT
SELECT OrderID, CustomerID, Amount
FROM StoreOrders;

-- 5
SELECT Department
FROM CurrentEmployees
EXCEPT
SELECT Department
FROM FormerEmployees;

--INTERSECT
-- 1
SELECT EmployeeID, EmployeeName
FROM CurrentEmployees
INTERSECT
SELECT EmployeeID, EmployeeName
FROM FormerEmployees;

-- 2
SELECT Department
FROM CurrentEmployees
INTERSECT
SELECT Department
FROM FormerEmployees;

-- 3
SELECT CustomerID, CustomerName
FROM DomesticCustomers
INTERSECT
SELECT CustomerID, CustomerName
FROM InternationalCustomers;

-- 4
SELECT City
FROM DomesticCustomers
INTERSECT
SELECT City
FROM InternationalCustomers;

-- 5
SELECT OrderID, CustomerID, Amount
FROM OnlineOrders
INTERSECT
SELECT OrderID, CustomerID, Amount
FROM StoreOrders;

--Intermediate Assignment
--UNION
-- 1
SELECT EmployeeID, EmployeeName
FROM CurrentEmployees
UNION
SELECT EmployeeID, EmployeeName
FROM FormerEmployees;

-- 2
SELECT CustomerID, CustomerName
FROM DomesticCustomers
UNION
SELECT CustomerID, CustomerName
FROM InternationalCustomers;

-- 3
SELECT Salary FROM CurrentEmployees
UNION
SELECT Salary FROM FormerEmployees;

-- 4
SELECT OrderID FROM OnlineOrders
UNION
SELECT OrderID FROM StoreOrders;

-- 5
SELECT Department FROM CurrentEmployees
UNION
SELECT Department FROM FormerEmployees;

--UNION ALL
-- 1
SELECT COUNT(*) AS TotalRows
FROM (
    SELECT EmployeeID FROM CurrentEmployees
    UNION ALL
    SELECT EmployeeID FROM FormerEmployees
) A;

-- 2
SELECT *
FROM DomesticCustomers
UNION ALL
SELECT *
FROM InternationalCustomers;

-- 3
SELECT Salary FROM CurrentEmployees
UNION ALL
SELECT Salary FROM FormerEmployees;

-- 4
SELECT City FROM DomesticCustomers
UNION ALL
SELECT City FROM InternationalCustomers;

-- 5
SELECT Amount FROM OnlineOrders
UNION ALL
SELECT Amount FROM StoreOrders;

--EXCEPT
-- 1
SELECT EmployeeID
FROM CurrentEmployees
EXCEPT
SELECT EmployeeID
FROM FormerEmployees;

-- 2
SELECT EmployeeID
FROM FormerEmployees
EXCEPT
SELECT EmployeeID
FROM CurrentEmployees;

-- 3
SELECT CustomerID
FROM DomesticCustomers
EXCEPT
SELECT CustomerID
FROM InternationalCustomers;

-- 4
SELECT CustomerID
FROM InternationalCustomers
EXCEPT
SELECT CustomerID
FROM DomesticCustomers;

-- 5
SELECT OrderID
FROM OnlineOrders
EXCEPT
SELECT OrderID
FROM StoreOrders;

--INTERSECT
-- 1
SELECT EmployeeID
FROM CurrentEmployees
INTERSECT
SELECT EmployeeID
FROM FormerEmployees;

-- 2
SELECT CustomerID
FROM DomesticCustomers
INTERSECT
SELECT CustomerID
FROM InternationalCustomers;

-- 3
SELECT OrderID
FROM OnlineOrders
INTERSECT
SELECT OrderID
FROM StoreOrders;

-- 4
SELECT Salary
FROM CurrentEmployees
INTERSECT
SELECT Salary
FROM FormerEmployees;

-- 5
SELECT Department
FROM CurrentEmployees
INTERSECT
SELECT Department
FROM FormerEmployees;
