CREATE TABLE students (
    student_id INT PRIMARY KEY,        
    name VARCHAR(100) NOT NULL,        
    email VARCHAR(100) UNIQUE,         
    age INT CHECK (age >= 18)          
);

CREATE TABLE courses(
    courses_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);


CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY , 
    student_id INT, 
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(courses_id)
)

INSERT INTO students (student_id, name , email , age) VALUE(1,"MOHAN BALAJI","mohan@contact.me",19)
INSERT INTO courses (course_id, course_name) VALUE(101,'Mathematics');
INSERT INTO courses (courses_id, course_name) VALUE(101,'Mathematics');

INSERT INTO enrollments (enrollment_id,student_id,course_id) VALUES (1,1,101);
SELECT * FROM students;

INSERT INTO students VALUE (1,"testUser","Test@email.com",18);

INSERT INTO students VALUE (2,NULL , "balaji@contact.me",19);

INSERT INTO students (student_id,name,email) VALUE ("Another",2,'mohan@contact.me');

