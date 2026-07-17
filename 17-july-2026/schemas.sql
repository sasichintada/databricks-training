-- CurrentEmployees
CREATE TABLE CurrentEmployees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO CurrentEmployees VALUES
(101,'John','HR',50000),
(102,'Emma','Finance',65000),
(103,'David','IT',70000),
(104,'Sophia','IT',72000),
(105,'Michael','Sales',55000),
(106,'Olivia','Marketing',48000),
(107,'James','Marketing',60000),
(108,'William','IT',75000),
(109,'Ava','Finance',52000),
(110,'Isabella','Sales',68000);

-- FormerEmployees
CREATE TABLE FormerEmployees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO FormerEmployees VALUES
(105,'Michael','Sales',55000),
(106,'Olivia','Marketing',48000),
(111,'Lucas','HR',45000),
(112,'Mia','Finance',62000),
(113,'Ethan','IT',71000),
(114,'Charlotte','Sales',53000),
(115,'Benjamin','Operations',59000),
(116,'Amelia','HR',51000),
(117,'Henry','Finance',67000),
(118,'Harper','IT',73000);

-- DomesticCustomers
CREATE TABLE DomesticCustomers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO DomesticCustomers VALUES
(1,'ABC Ltd','New York'),
(2,'XYZ Corp','Chicago'),
(3,'Global Tech','Dallas'),
(4,'Sunrise Inc','Boston'),
(5,'Bright Solutions','Seattle'),
(6,'Alpha Systems','Miami');

-- InternationalCustomers
CREATE TABLE InternationalCustomers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO InternationalCustomers VALUES
(4,'Sunrise Inc','Boston'),
(5,'Bright Solutions','Seattle'),
(7,'TechWorld','London'),
(8,'Future Corp','Toronto'),
(9,'Vision Ltd','Dubai'),
(10,'Skyline LLC','Sydney');

-- OnlineOrders
CREATE TABLE OnlineOrders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Amount DECIMAL(10,2)
);

INSERT INTO OnlineOrders VALUES
(1001,1,250),
(1002,2,450),
(1003,3,700),
(1004,5,900),
(1005,7,350),
(1006,8,1200);

-- StoreOrders
CREATE TABLE StoreOrders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Amount DECIMAL(10,2)
);

INSERT INTO StoreOrders VALUES
(1004,5,900),
(1005,7,350),
(1007,2,600),
(1008,3,400),
(1009,9,1100),
(1010,10,850);