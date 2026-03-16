CREATE DATABASE Ecommerce;

USE Ecommerce;
CREATE TABLE Products ( 
Product_id INT PRIMARY KEY AUTO_INCREMENT, Product_name VARCHAR(50), Price DECIMAL(5,2)) ;
CREATE TABLE Sales (
Sales_id INT PRIMARY KEY AUTO_INCREMENT, product_id INT , Department VARCHAR(50));
CREATE TABLE Employee(
Employee_id INT PRIMARY KEY AUTO_INCREMENT, Employee_name VARCHAR(50) , Department VARCHAR(50));

ALTER TABLE Products 
MODIFY COLUMN Price DECIMAL(10,2) ;

INSERT INTO Products ( Product_name , Price)
VALUES ( 'Laptop' , '25000' ),
( 'Television' , '10000' ),
('Radio' , '5000'),
('Blutooth' , '1000'),
('Headphone', ' 1500')
;


INSERT INTO  Sales ( Product_id, Department)
VALUES ( '1' , 'Electronics'),
( '2', 'Electronics'),
('3', 'Audio'),
('4','Audio'),('105','Audio')
;

INSERT INTO Employee (
Employee_name, Department)
VALUES( 'Yuvan', 'Electronics'),
('Nandhini', 'Electronics'),
('Sathish', 'Electronics'),
('Kumar','Audio'),
('Priya','Audio')
;

SELECT * FROM Products;
SELECT * FROM Sales ; 
SELECT * FROM Employee;


SELECT * FROM Products
ORDER BY Price DESC
LIMIT 3
;

SELECT COUNT(Product_id)  FROM Sales ;

TRUNCATE TABLE Sales ; 

INSERT INTO  Sales ( Product_id, Department)
VALUES ( '1' , 'Electronics'),
( '2', 'Electronics'),
('3', 'Audio'),
('4','Audio'),('105','Audio')
;
SELECT COUNT(Product_id)  FROM Sales ;
SELECT SUM(Price) FROM Products ;
SELECT AVG(Price) FROM Products ;
SELECT MAX(Price) FROM Products ; 
SELECT MIN(Price) FROM Products ; 

SELECT * FROM Employee 
GROUP BY Employee_id
HAVING COUNT(Employee_id) >= 10 ;






