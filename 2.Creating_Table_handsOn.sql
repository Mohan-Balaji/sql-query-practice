CREATE TABLE employees (
	employee_id INT , 
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hr_pay DECIMAL(5,2),
    hire_date date
);

SELECT * FROM employees;

INSERT INTO employees 
VALUE(1,"jack","king",25.4,"2023-01-02");

INSERT INTO employees 
VALUES (2,"mohan","Balaji",25.23,"2023-01-18"),
	   (3,"jeswant","kumar",25.23,"2023-01-18"),
       (4,"rohit","sharama",25.23,"2023-01-18"),
       (5,"neeraj","durai",25.23,"2023-01-18"),
       (6,"lakshman","pitbull",25.23,"2023-01-18");
       

SELECT * FROM employees; 

















show databases;

use testdb;




















