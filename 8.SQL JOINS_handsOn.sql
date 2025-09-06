CREATE DATABASE COMPANY;

USE COMPANY;

CREATE TABLE employees(
    emp_id INT PRIMARY KEY, 
    emp_name VARCHAR(20),
    department_id INT , 
    salary DECIMAL(10,2)
);

show tables; 

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    emp_id INT
);

INSERT INTO employees VALUES 
(1, 'John Doe', 101, 50000),
(2, 'Jane Smith', 102, 60000),
(3, 'Bob Johnson', 101, 55000),
(4, 'Alice Brown', 103, 70000),
(5, 'Charlie Wilson', NULL, 45000);

INSERT INTO departments VALUES 
(101, 'IT', 'New York'),
(102, 'HR', 'Chicago'),
(103, 'Finance', 'Boston'),
(104, 'Marketing', 'Los Angeles');

INSERT INTO projects VALUES 
(1, 'Website Redesign', 1),
(2, 'HR System', 2),
(3, 'Budget Analysis', 4),
(4, 'Mobile App', 6);



SELECT AVG(salary) FROM employees;


-- ===========================================
-- TYPES OF JOINS ->INNER JOINS , LEFT OUTER JOIN , RIGHT OUTER JOIN , FULL OUTER JOIN , NATURAL JOIN ,CROSS JOIN 
-- ===========================================


-- ===========================================
-- 1. INNER JOIN
-- Returns only matching records from both tables
-- ===========================================

-- Get employees with their department information

SELECT e.department_id,e.emp_name,d.dept_id,d.dept_name FROM employees e 
INNER JOIN departments d ON e.department_id = d.dept_id;

-- Get employees assigned to projects

SELECT e.emp_id,e.emp_name,p.project_id,p.project_name FROM employees e 
JOIN projects p 
ON e.emp_id = p.emp_id;

-- ===========================================
-- 2. LEFT OUTER JOIN (LEFT JOIN)
-- Returns all records from left table, matching from right
-- ===========================================

-- Get all employees with their department info (including those without departments)

SELECT e.emp_id ,e.emp_name,d.dept_id,d.dept_name
FROM employees e
LEFT JOIN departments d 
ON e.department_id = d.dept_id;

-- Get all employees with their projects (including those without projects)

SELECT e.emp_id , e.emp_name , p.project_name
FROM employees e 
LEFT JOIN projects p 
ON e.emp_id = p.emp_id;

-- ===========================================
-- 3. RIGHT OUTER JOIN (RIGHT JOIN)
-- Returns all records from right table, matching from left
-- ===========================================

-- Get all departments with their employees (including departments without employees)

SELECT d.dept_name , e.emp_name 
FROM employees e
RIGHT JOIN departments d 
ON e.department_id = d.dept_id;

-- Get all projects with their assigned employees (including unassigned projects)

SELECT p.project_name , e.emp_name 
FROM projects p
RIGHT JOIN employees e 
ON p.emp_id = e.emp_id;


-- ===========================================
-- 4. FULL OUTER JOIN (FULL JOIN)
-- Returns all records when there's a match in either table
-- ===========================================

-- Get all employees and departments (including unmatched records from both sides)

SELECT e.emp_name, e.salary, d.dept_name, d.location
FROM employees e
FULL OUTER JOIN departments d 
ON e.department_id = d.dept_id;

-- USING UNION SIMULATES FULL OUTER JOINS
SELECT e.emp_name, e.salary, d.dept_name, d.location
FROM employees e
LEFT JOIN departments d ON e.department_id = d.dept_id

UNION

SELECT e.emp_name, e.salary, d.dept_name, d.location
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.dept_id;

-- ===========================================
-- 5. CROSS JOIN
-- Returns Cartesian product of both tables
-- ===========================================

-- Get all possible combinations of employees and departments
SELECT e.emp_name, d.dept_name
FROM employees e
CROSS JOIN departments d;

-- ===========================================
-- 6. NATURAL JOIN
-- Automatically joins on columns with same names
-- ===========================================

-- Note: Natural join works when tables have columns with identical names
-- For demonstration, let's create tables with matching column names

CREATE TABLE emp_temp (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE dept_temp (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO emp_temp VALUES (1, 'John', 101), (2, 'Jane', 102);
INSERT INTO dept_temp VALUES (101, 'IT'), (102, 'HR');

-- Natural join automatically uses dept_id column
SELECT emp_name, dept_name
FROM emp_temp
NATURAL JOIN dept_temp;

