CREATE DATABASE IF NOT EXISTS QuanLyBanHang;

USE QuanLyBanHang;

CREATE TABLE IF NOT EXISTS Customer (
    cID INT PRIMARY KEY,
    customerName VARCHAR(255),
    customerAddress VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `Order` (
    oID INT PRIMARY KEY,
    cID INT,
    oDate DATE,
    FOREIGN KEY (cID) REFERENCES Customer(cID)
);

CREATE TABLE IF NOT EXISTS Product (
    pID INT PRIMARY KEY,
    productName VARCHAR(255),
    productPrice DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS OrderDetail (
    odID INT PRIMARY KEY,
    oID INT,
    pID INT,
    quantity INT,
    totalPrice DECIMAL(10, 2),
    FOREIGN KEY (oID) REFERENCES `Order`(oID),
    FOREIGN KEY (pID) REFERENCES Product(pID)
);

INSERT INTO Customer (cID, customerName, customerAddress) VALUES
(1, 'Customer1', 'Address1'),
(2, 'Customer2', 'Address2');

INSERT INTO Product (pID, productName, productPrice) VALUES
(101, 'Product1', 10.50),
(102, 'Product2', 15.75);

INSERT INTO `Order` (oID, cID, oDate) VALUES
(1001, 1, '2023-01-01'),
(1002, 2, '2023-02-01');

INSERT INTO OrderDetail (odID, oID, pID, quantity, totalPrice) VALUES
(2001, 1001, 101, 2, 21.00),
(2002, 1001, 102, 1, 15.75),
(2003, 1002, 101, 3, 31.50);
