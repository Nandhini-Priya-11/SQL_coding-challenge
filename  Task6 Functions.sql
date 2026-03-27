USE Students ; 


SELECT * FROM Students ; 

SELECT UPPER(Student_name) AS UPPER_Name  FROM Students ; 

SELECT LOWER(Student_name) AS LOWER_Name FROM Students ; 

SELECT SUBSTRING(Student_name, 1, 3 ) AS SUB_name FROM Students ; 

SELECT CONCAT(Student_id , ' ' , Student_name) AS CONCAT_Name  FROM Students ;

ALTER TABLE Students
ADD COLUMN  joining_date DATE DEFAULT '2026-01-10';

ALTER TABLE Students
DROP COLUMN joining_date;

ALTER TABLE Students
ADD COLUMN  joining_date DATE DEFAULT '2026-01-10';

SELECT * FROM Students ;

SELECT YEAR(joining_date) FROM Students ; 

SELECT YEAR(NOW()) ; 

SELECT DATEDIFF(CURDATE(),joining_date) FROM Students ; 

SELECT NOW() ;

ALTER TABLE Students
DROP COLUMN Student_nameB;

DELETE FROM Students
WHERE Student_id  BETWEEN '6' AND '10' ;

SELECT * FROM Students ;

DELIMITER $$
CREATE FUNCTION getfullname(Student_id INT ,Student_name VARCHAR(50)) 
RETURNS VARCHAR(100)
DETERMINISTIC 
BEGIN 
    RETURN CONCAT(CAST(Student_id AS CHAR),' ' ,Student_name);
END $$
DELIMITER ; 

SELECT getfullname(Student_id,Student_name) AS Fullname FROM Students;



