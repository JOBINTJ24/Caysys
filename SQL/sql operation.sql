 -- 1. To create a database and tables with minimum 10 field requirements for your own project, 
 -- and then insert a minimum 10 records and use the constraints.
create database claysys;
use claysys;
CREATE TABLE my_table (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    occupation VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);
INSERT INTO my_table (id, name, email, age, gender, occupation, address, city, state, country) VALUES
(1, 'Jobin', 'jobin@gmail.com', 22, 'Male', 'Engineer', 'puthanpura', 'kalpetta', 'kerala', 'india'),
(2, 'johnson', 'johnson@gmail.com', 24, 'Male', 'Teacher', 'puthiyavidu', 'pulpally', 'kerala', 'india'),
(3, 'rahul', 'rahul@gmail.com', 24, 'Male', 'Lawyer', 'chakkalakkal', 'pulpally', 'kerala', 'india'),
(4, 'amal', 'amal@gmail.com', 22, 'Male', 'Doctor', 'thekethil', 'panamaram', 'kerala', 'india'),
(5, 'justin', 'justin@gmail.com', 22, 'Male', 'Programmer', 'valiyavidu', 'muttil', 'kerala', 'india'),
(6, 'alan', 'alan@gmail.com', 27, 'Male', 'Accountant', 'thattuparambil', 'pulpally', 'kerala', 'india'),
(7, 'sajo', 'sajo@gmail.com', 22, 'Male', 'Salesperson', 'moolakkara', 'kalpetta', 'kerala', 'india'),
(8, 'rovy', 'rovy@gmail.com', 26, 'Male', 'Designer', 'vadekkel', 'padinjarathara', 'kerala', 'india'),
(9, 'amil', 'amil@gmail.com', 25, 'Male', 'Manager', 'chokkattu', 'panamaram', 'kerala', 'india'),
(10, 'melbin', 'melbin@gmail.com', 28, 'Male', 'Salesperson', 'pathipalliyil', 'kalpetta', 'kerala', 'india');

 -- 2. To create an employee table and how to achieve or get the second highest salary from the table. 

CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  salary DECIMAL(10,2),
  department VARCHAR(50)
);

INSERT INTO employees (id, name, salary, department) VALUES
(1, 'Jobin',  22000.00,  'english' ),
(2, 'johnson',  24000.00, 'physics'),
(3, 'rahul',  25000.00, 'chemistry'),
(4, 'amal',  50000.00, 'mathematics'),
(5, 'justin',  60000.00, 'malayalam');

SELECT salary 
FROM (
  SELECT salary, RANK() OVER (ORDER BY Salary DESC) AS SalaryRank 
  FROM employees
) t
WHERE SalaryRank = 2;

-- 3.To perform the SQL statement for to lists the number of employees in each department.

SELECT department, COUNT(id) as num_employees
FROM employees
GROUP BY department;



CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  city VARCHAR(50)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  amount FLOAT
);

INSERT INTO customers (customer_id, name, email, city)
VALUES
  (1, 'jobin', 'jobin@gmail.com', 'New York'),
  (2, 'johnson', 'johnson@gmail.com', 'Los Angeles'),
  (3, 'rahul', 'rahul@gmail.com', 'Chicago');

INSERT INTO orders (order_id, customer_id, order_date, amount)
VALUES
  (1, 1, '2023-01-01', 100.00),
  (2, 1, '2023-02-01', 200.00),
  (3, 2, '2023-01-15', 50.00),
  (4, 3, '2023-02-15', 150.00);
  
  -- inner join
SELECT *
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

-- left join
SELECT *
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

-- right join
SELECT *
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;

use claysys;
  -- 5. To combine necessary fields from two different tables by using primary key and foreign key constraints.  
CREATE TABLE college (
    id INT PRIMARY KEY,
    staff varchar(20)
);

CREATE TABLE student (
    id INT PRIMARY KEY,
    name varchar(20),
    staff INT,
    foreign key (staff)    REFERENCES student(id)
);

INSERT INTO college (id, staff) VALUES
(1, 'john'),
(2, 'jose'),
(3, 'afueth' );

INSERT INTO student (id, name, staff) VALUES
(1, 'rovy',1 ),
(2, 'amil', 2),
(3, 'amal', 3 );

select * from student;

