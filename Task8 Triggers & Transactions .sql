CREATE DATABASE OrderDetails;

USE OrderDetails; 

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    Amount INT
);

INSERT INTO Orders VALUES
(1, 101, '2024-01-01', 500),
(2, 102, '2024-01-02', 700),
(3, 103, '2024-01-03', 900);

CREATE TABLE Order_History (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    Amount INT
);

CREATE TRIGGER trg_delete_orders
AFTER DELETE ON Orders
FOR EACH ROW
INSERT INTO Order_History
VALUES (OLD.OrderID, OLD.CustomerID, OLD.OrderDate, OLD.Amount);

SET SQL_SAFE_UPDATES = 0; 

DELETE FROM Orders WHERE OrderID = 1;

SELECT * FROM Order_History;

CREATE USER 'junior_analyst'@'localhost' IDENTIFIED BY '1234';


GRANT SELECT ON Orders TO 'junior_analyst'@'localhost';


START TRANSACTION;

UPDATE Orders SET Amount = Amount - 100 WHERE OrderID = 2;

SAVEPOINT after_update;

UPDATE Orders SET Amount = Amount + 100 WHERE OrderID = 3;

COMMIT;










