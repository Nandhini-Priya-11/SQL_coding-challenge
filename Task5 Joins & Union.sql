USE Students ;

 CREATE TABLE Students ( 
 Student_id INT PRIMARY KEY AUTO_INCREMENT, Student_name VARCHAR(50));
 CREATE TABLE Courses (
 Course_id INT PRIMARY KEY AUTO_INCREMENT, Course_name VARCHAR(50));
 CREATE TABLE Entrollment_details (
 Entrollment_id INT PRIMARY KEY AUTO_INCREMENT,Student_id INT, Course_id INT );
 
INSERT INTO Students(Student_id, Student_name)
VALUES ( '1', 'Sathish'),
('2' , 'Yuvan '),
('3','Nandhini'),
('4','Kumar'),
('5','Priya')
;
INSERT INTO Courses ( Course_id, Course_name)
VALUES ( '101','Android Developer'), 
('102' , 'Python'),
('103', 'MySQL'),
('104','PowerBI'),
('105', 'Java')
;
INSERT INTO Entrollment_details ( Student_id, Course_id)
VALUES ('1','101'),
('2','102'),
('3','103'),
('4','104'),
('5','105')
;
SELECT * FROM Students ;
SELECT * FROM Courses;
SELECT * FROM Entrollment_details;

SELECT Students.Student_name,
Entrollment_details.Entrollment_id
FROM Students
INNER JOIN Entrollment_details
ON Students.Student_id=Entrollment_details.Student_id;


SELECT Students.Student_name,
Entrollment_details.Entrollment_id 
FROM Students 
LEFT JOIN Entrollment_details
ON Students.Student_id=Entrollment_details.Student_id
;

SELECT Courses.Course_name,
Entrollment_details.Entrollment_id 
FROM Courses 
RIGHT JOIN Entrollment_details
ON Courses.Course_id=Entrollment_details.Course_id
;

SELECT * FROM Students
UNION 
SELECT * FROM Courses;

SELECT * FROM Students
UNION ALL
SELECT * FROM Courses;









