CREATE DATABASE tech;

-- using tech
USE tech;

CREATE TABLE ProductDetail (
OrderID INT,
CustomerName VARCHAR(50),
Products VARCHAR(100)
);

INSERT INTO ProductDetail VALUES
(101, 'John Doe', 'Laptop, Mouse'),
(102, 'Jane Smith', 'Tablet, Keyboard, Mouse'),
(103, 'Emily Clark', 'Phone');

-- creating and inserting into normalized table
CREATE TABLE NormalizedProductDetail (
OrderID INT,
CustomerName VARCHAR(50),
Product VARCHAR(50)
);

INSERT INTO NormalizedProductDetail VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- creating order table
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(50)
);

INSERT INTO Orders VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- OrderProducts table
CREATE TABLE OrderProducts (
OrderID INT,
Product VARCHAR(50),
Quantity INT,
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderProducts VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);





