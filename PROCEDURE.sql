 ----------- task 1 ---------------
 USE employee;

CREATE PROCEDURE GetEmployeeSalaryReport(
    IN p_department_name VARCHAR(50),
    IN p_minimum_salary DECIMAL(10,2)
)
SELECT
    employee_id,employee_name,department,designation,basic_salary,joining_date
FROM employees
WHERE department = p_department_name
  AND basic_salary >= p_minimum_salary
  AND status = 'Active';
  
  CALL GetEmployeeSalaryReport('IT', 50000);
  
  
  ----- task 2 ----------
  USE employee;

CREATE PROCEDURE CalculateEmployeeSalary(
    IN p_employee_id INT
)
SELECT employee_name AS `Employee Name`, basic_salary AS `Basic Salary`,basic_salary * 0.20 AS HRA,
   basic_salary * 0.10 AS DA,
    basic_salary * 0.12 AS PF,
    basic_salary + HRA +DA - PF AS 'Net Salary'
FROM employees
WHERE employee_id = p_employee_id;

call CalculateEmployeeSalary(101);
  
  -------- task 3 ------------
  
  
  USE employee;

CREATE PROCEDURE EmployeeSalaryGrade(
    IN p_employee_id INT
)
SELECT
    employee_name AS `Employee Name`,
    basic_salary AS `Basic Salary`,
    CASE
        WHEN basic_salary < 30000 THEN 'C'
        WHEN 'C' <= 60000 THEN 'B'
        ELSE 'A'
    END AS `Salary Grade`
FROM employees
WHERE employee_id = p_employee_id;
 
 call  EmployeeSalaryGrade(108);
 
 
 ----- task 4 ------ 
  USE employee;

CREATE PROCEDURE GetDepartmentSummary(
    IN p_department_name VARCHAR(50))
SELECT
    COUNT(*) AS 'Total Employees', basic_salary AS BS,
    AVG(BS) AS 'Average Salary',
    MAX(BS) AS 'Highest Salary',
    MIN(BS) AS 'Lowest Salary',
    SUM(BS) AS 'Total Salary Expenditure'
FROM employees
WHERE department = p_department_name;
  
  CALL GetDepartmentSummary('IT');
  
  
SHOW PROCEDURE STATUS
WHERE Db = 'employee';