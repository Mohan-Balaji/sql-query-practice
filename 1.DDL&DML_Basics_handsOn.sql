SHOW DATABASES;

USE testdb;

SHOW Tables;

DROP table employees;

show tables;

CREATE TABLE employee (
emp_id INT AUTO_INCREMENT PRIMARY KEY,
emp_name VARCHAR(20),
emp_salary FLOAT);

RENAME TABLE employee TO employees;

ALTER TABLE employees RENAME COLUMN emp_name TO ename;

ALTER TABLE employees MODIFY COLUMN emp_salary FLOAT;
INSERT INTO employees(ename , emp_salary) VALUES("tarun_RAJ",22.2222);

SELECT * FROM employees;

CREATE VIEW emp as SELECT * FROM employees;

SELECT * FROM emp;

