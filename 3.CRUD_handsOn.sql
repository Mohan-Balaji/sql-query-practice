USE testdb;

SELECT * FROM employee;

RENAME TABLE employees TO employee;

-- DROP TABLE <TABLENAME>

ALTER TABLE employee ADD phone_number VARCHAR(13);

SELECT * FROM employee;

RENAME TABLE employee TO employees;


SELECT * FROM employees;

ALTER TABLE employees RENAME COLUMN phone_number TO email;

SELECT * FROM employees;

ALTER TABLE employees MODIFY email VARCHAR(100);


SELECT * FROM  employees;


ALTER TABLE employees ADD COLUMN exp INT; 


SELECT * FROM employees;



ALTER TABLE employees ADD address VARCHAR(220);

ALTER TABLE employees RENAME COLUMN address1 TO addr;

ALTER TABLE employees MODIFY email VARCHAR(101) FIRST;


SELECT * FROM employees;

ALTER TABLE employees
DROP COLUMN email;-- Alter Command manupulating the columns 
                
                
ALTER TABLE employees ADD COLUMN temp VARCHAR(199);
                    
                    
          
SELECT * FROM employees;
                    






ALTER TABLE employees MODIFY salary INT AFTER email;


ALTER TABLE employees MODIFY exp INT AFTER email;






ALTER TABLE employees RENAME COLUMN temp To temp1;


SELECT * FROM employees;


ALTER TABLE employees 
DROP COLUMN temp1;



ALTER TABLE employees MODIFY COLUMN ename varchar(10) FIRST; 


ALTER TABLE employees DROP COLUMN addr;


SELECT * FROM employees;





ALTER TABLE employees 
DROP COLUMN exp;



SELECT * FROM employees;


RENAME TABLE employees TO employee;














SHOW TABLES;



USE testdb;

RENAME TABLE employee TO employees;






