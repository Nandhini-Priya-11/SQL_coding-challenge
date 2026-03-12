CREATE DATABASE University;

USE University;
CREATE TABLE Students_Info (
StudentId INT PRIMARY KEY AUTO_INCREMENT,
StudentName VARCHAR(50) NOT NULL,
Department VARCHAR(5) 
);

INSERT INTO Students_Info ( StudentName , Department) 
VALUES ('Anisha' , 'CSE' ),
( 'Ezhil' , 'EEE'),
( 'Neha' , 'ECE'),
('Sakthi' , 'CSE'),
( 'Yuvan' , 'EEE')
;

SELECT * FROM Students_Info;


TRUNCATE Students_Info;

INSERT INTO Students_Info ( StudentName , Department )
VALUES ( 'Ezhil' , 'CSE'),
('Neha' , 'EEE'),
('Nila' , 'CSE'),
('Sakthi', 'EEE'),
('Yuvan', 'CSE');

SELECT * FROM Students_Info;

SELECT DISTINCT (Department) FROM Students_Info ;

ALTER TABLE Students_Info 
ADD COLUMN Email VARCHAR(50) ;

SET SQL_SAFE_UPDATES = 0;

UPDATE Students_Info
SET Email = 'ezhil@gmail.com'
WHERE StudentName = 'Ezhil';
UPDATE Students_Info
SET Email = NULL
WHERE StudentName ='Neha';
UPDATE Students_Info
SET Email = 'nila@gmail.com'
WHERE StudentName ='Nila';
UPDATE Students_Info
SET Email = NULL
WHERE StudentName = 'Sakthi';
UPDATE Students_Info
SET Email = 'yuvan@gmail.com'
WHERE StudentName = 'Yuvan';


DELETE FROM Students_Info WHERE StudentID >5;

SELECT * FROM Students_Info;

SELECT * FROM Students_Info
WHERE Email IS NULL ;
SELECT * FROM Students_Info
WHERE Email IS NOT NULL ;

SELECT * FROM Students_Info;

SELECT * FROM Students_Info 
WHERE Department IN ('EEE');

SELECT * FROM Students_Info
WHERE StudentID BETWEEN '2' AND '5';

SELECT * FROM Students_Info 
WHERE StudentID NOT BETWEEN '2' AND '5';