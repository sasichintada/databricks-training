CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    join_date DATE
);
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    order_amount INT,
    order_date DATE
);
INSERT INTO employees VALUES
(1,'Amit','IT',2000,'2023-01-01'),
(2,'Ravi','HR',1500,'2023-01-02'),
(3,'Sneha','IT',3000,'2023-01-03'),
(4,'Kiran','Finance',2500,'2023-01-04'),
(5,'Priya','IT',2000,'2023-01-05'),
(6,'Arjun','HR',1800,'2023-01-06'),
(7,'Neha','Finance',2200,'2023-01-07'),
(8,'Vikas','IT',3000,'2023-01-08'),
(9,'Anjali','HR',1700,'2023-01-09'),
(10,'Rahul','Finance',2600,'2023-01-10'),
(11,'Suresh','IT',2800,'2023-01-11'),
(12,'Pooja','HR',1600,'2023-01-12'),
(13,'Manoj','Finance',2400,'2023-01-13'),
(14,'Divya','IT',2100,'2023-01-14'),
(15,'Karthik','HR',1900,'2023-01-15'),
(16,'Meena','Finance',2300,'2023-01-16'),
(17,'Raj','IT',2700,'2023-01-17'),
(18,'Simran','HR',2000,'2023-01-18'),
(19,'Deepak','Finance',2500,'2023-01-19'),
(20,'Nisha','IT',2600,'2023-01-20');

INSERT INTO orders VALUES
(101,'Amit','Chennai',1000,'2023-01-01'),
(102,'Ravi','Hyderabad',1500,'2023-01-02'),
(103,'Sneha','Chennai',3000,'2023-01-03'),
(104,'Kiran','Bangalore',2500,'2023-01-04'),
(105,'Priya','Chennai',2000,'2023-01-05'),
(106,'Arjun','Hyderabad',1800,'2023-01-06'),
(107,'Neha','Bangalore',2200,'2023-01-07'),
(108,'Vikas','Chennai',3000,'2023-01-08'),
(109,'Anjali','Hyderabad',1700,'2023-01-09'),
(110,'Rahul','Bangalore',2600,'2023-01-10');
