CREATE DATABASE RegionalSalesDB;

USE RegionalSalesDB;

CREATE TABLE RegionalProductSales (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    Region VARCHAR(50),
    Product VARCHAR(50),
    Sales DECIMAL(12,2),
    Profit DECIMAL(12,2),
    TargetSales DECIMAL(12,2)
);

INSERT INTO RegionalProductSales
(OrderID, OrderDate, Region, Product, Sales, Profit, TargetSales)
VALUES
(1001, '2025-01-05', 'North', 'Laptop', 85000.00, 12000.00, 80000.00),
(1002, '2025-01-12', 'South', 'Phone', 62000.00, 9000.00, 70000.00),
(1003, '2025-01-18', 'East', 'Laptop', 91000.00, 15000.00, 85000.00),
(1004, '2025-01-25', 'West', 'Tablet', 45000.00, 7000.00, 40000.00),
(1005, '2025-02-03', 'North', 'Phone', 73000.00, 11000.00, 75000.00),
(1006, '2025-02-11', 'South', 'Laptop', 98000.00, 16000.00, 90000.00),
(1007, '2025-02-19', 'East', 'Phone', 68000.00, 10000.00, 65000.00),
(1008, '2025-02-26', 'West', 'Laptop', 105000.00, 18000.00, 95000.00),
(1009, '2025-03-04', 'North', 'Tablet', 52000.00, 8000.00, 50000.00),
(1010, '2025-03-15', 'South', 'Phone', 79000.00, 12000.00, 72000.00),
(1011, '2025-03-22', 'East', 'Tablet', 47000.00, 6000.00, 55000.00),
(1012, '2025-03-29', 'West', 'Phone', 88000.00, 13000.00, 85000.00),
(1013, '2025-04-06', 'North', 'Monitor', 38000.00, 6000.00, 40000.00),
(1014, '2025-04-14', 'South', 'Tablet', 49000.00, 7500.00, 45000.00),
(1015, '2025-04-21', 'East', 'Monitor', 42000.00, 6500.00, 40000.00),
(1016, '2025-04-28', 'West', 'Headphones', 15000.00, 3200.00, 14000.00),
(1017, '2025-05-05', 'North', 'Laptop', 92000.00, 14000.00, 90000.00),
(1018, '2025-05-13', 'South', 'Monitor', 36000.00, 5500.00, 38000.00),
(1019, '2025-05-20', 'East', 'Headphones', 13000.00, 2800.00, 15000.00),
(1020, '2025-05-27', 'West', 'Tablet', 56000.00, 8500.00, 52000.00);
