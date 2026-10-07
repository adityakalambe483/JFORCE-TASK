CREATE DATABASE IF NOT EXISTS employee;
USE employee;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    designation VARCHAR(100) NOT NULL,
    basic_salary DECIMAL(10,2) NOT NULL,
    joining_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL
);
INSERT INTO employees  
(employee_id, employee_name, department, designation, basic_salary, joining_date, status)
VALUES
(101, 'Amit Sharma', 'IT', 'Software Developer', 65000.00, '2022-01-15', 'Active'),
(102, 'Priya Patil', 'HR', 'HR Executive', 42000.00, '2021-06-10', 'Active'),
(103, 'Rahul Verma', 'IT', 'Senior Developer', 85000.00, '2020-03-20', 'Active'),
(104, 'Sneha Joshi', 'Finance', 'Accountant', 55000.00, '2023-02-12', 'Active'),
(105, 'Vikas Singh', 'IT', 'Support Engineer', 48000.00, '2022-08-05', 'Inactive'),
(106, 'Neha Kulkarni', 'HR', 'HR Manager', 72000.00, '2019-11-18', 'Active'),
(107, 'Rohit Mehta', 'Finance', 'Finance Manager', 90000.00, '2018-07-25', 'Active'),
(108, 'Pooja Shah', 'Sales', 'Sales Executive', 35000.00, '2024-01-08', 'Active'),
(109, 'Karan Desai', 'IT', 'Team Lead', 110000.00, '2017-09-14', 'Active'),
(110, 'Anjali Rao', 'Sales', 'Sales Manager', 68000.00, '2020-12-01', 'Inactive');


SELECT * FROM employees;
 
