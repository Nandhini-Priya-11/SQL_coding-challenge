CREATE DATABASE EmployeesDB;

USE EmployeesDB;

CREATE TABLE EmpDetails( 
EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
EmployeeName VARCHAR(50),
DepartmentName VARCHAR(50),
DepartmentID INT,
Salary INT)
;

DROP TABLE EmpDetails ;

CREATE TABLE Employeess (
EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
EmployeeName VARCHAR(50),
DepartmentName VARCHAR(50),
DepartmentID INT,
Salary INT)
;
-- Create a stored procedure accepting EmployeeID as input.

DELIMITER $$ 
CREATE PROCEDURE GetEmploeeDetails(IN Emp_ID INT)
BEGIN 
SELECT * FROM Employeess 
WHERE EmployeeID = Emp_ID;
END
DELIMITER $$;






