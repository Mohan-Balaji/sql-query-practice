CREATE TABLE students (
  student_id INT PRIMARY KEY,
  name VARCHAR(50),
  class_id INT
); 

CREATE TABLE classes (
  class_id INT PRIMARY KEY,
  class_name VARCHAR(50)
);

INSERT INTO students VALUES (1, 'Alice', 101);
INSERT INTO students VALUES (2, 'Bob', 102);
INSERT INTO students VALUES (3, 'Charlie', NULL);
INSERT INTO students VALUES (4, 'David', 103);

INSERT INTO classes VALUES (101, 'Math');
INSERT INTO classes VALUES (102, 'Science');
INSERT INTO classes VALUES (104, 'History');


SELECT students.student_id, students.name, classes.class_name
FROM students
INNER JOIN classes
ON students.class_id = classes.class_id;

SELECT students.student_id, students.name, classes.class_name
FROM students
LEFT JOIN classes
ON students.class_id = classes.class_id;

SELECT students.student_id, students.name, classes.class_name
FROM students
RIGHT JOIN classes
ON students.class_id = classes.class_id;

SELECT students.student_id, students.name, classes.class_name
FROM students
FULL OUTER JOIN classes
ON students.class_id = classes.class_id;

-- FULL OUTER JOIN 

SELECT students.student_id, students.name, classes.class_name
FROM students
LEFT JOIN classes
ON students.class_id = classes.class_id

UNION

SELECT students.student_id, students.name, classes.class_name
FROM students
RIGHT JOIN classes
ON students.class_id = classes.class_id;

-- SELF JOIN EXAMPLE 
SELECT * FROM employees;

SELECT e.name AS employee , m.name AS Manager 
FROM employees e 
JOIN employees ON employees m 

