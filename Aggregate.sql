CREATE TABLE Sales (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    SaleDate DATE
);

INSERT INTO Sales (Product, Category, Quantity, Price, SaleDate) VALUES
('Laptop', 'Electronics', 5, 700.00, '2024-01-10'),
('Phone', 'Electronics', 10, 300.00, '2024-01-15'),
('Tablet', 'Electronics', 7, 250.00, '2024-02-01'),
('TV', 'Electronics', 3, 900.00, '2024-02-10'),
('Headphones', 'Accessories', 15, 50.00, '2024-03-05'),
('Mouse', 'Accessories', 20, 25.00, '2024-03-10'),
('Keyboard', 'Accessories', 10, 45.00, '2024-04-01'),
('Chair', 'Furniture', 4, 150.00, '2024-04-15'),
('Desk', 'Furniture', 2, 300.00, '2024-05-01'),
('Monitor', 'Electronics', 6, 200.00, '2024-05-10');

-- 1. Total Quantity Sold
SELECT SUM(Quantity) AS TotalQuantity FROM Sales;

-- 2. Average Price of Products
SELECT AVG(Price) AS AvgPrice FROM Sales;

-- 3. Total Sales Amount
SELECT SUM(Quantity * Price) AS TotalRevenue FROM Sales;

-- 4. Number of Sales Transactions
SELECT COUNT(*) AS TotalSales FROM Sales;

-- 5. Maximum Sale Price
SELECT MAX(Price) AS MaxPrice FROM Sales;

-- 6. Minimum Sale Price
SELECT MIN(Price) AS MinPrice FROM Sales;

-- 7. Maximum Quantity Sold in One Transaction
SELECT MAX(Quantity) FROM Sales;

-- 8. Minimum Quantity Sold in One Transaction
SELECT MIN(Quantity) FROM Sales;

-- 9. Total Revenue for Electronics Category
SELECT SUM(Quantity * Price) FROM Sales WHERE Category = 'Electronics';

-- 10. Count of Unique Categories
SELECT COUNT(DISTINCT Category) FROM Sales;

-- 11. Total Revenue for Accessories Category
SELECT SUM(Quantity * Price) FROM Sales WHERE Category = 'Accessories';

-- 12. Total Revenue for Furniture Category
SELECT SUM(Quantity * Price) FROM Sales WHERE Category = 'Furniture';

-- 13. Average Quantity Sold
SELECT AVG(Quantity) FROM Sales;

-- 14. Maximum Revenue from a Single Product Sale
SELECT MAX(Quantity * Price) FROM Sales;

-- 15. Minimum Revenue from a Single Product Sale
SELECT MIN(Quantity * Price) FROM Sales;

-- 16. Total Revenue for Sales on a Specific Date
SELECT SUM(Quantity * Price) FROM Sales WHERE SaleDate = '2024-01-10';

-- 17. Average Price of Electronics
SELECT AVG(Price) FROM Sales WHERE Category = 'Electronics';

-- 18. Total Number of Products Sold
SELECT SUM(Quantity) FROM Sales;

-- 19. Maximum Price in Accessories Category
SELECT MAX(Price) FROM Sales WHERE Category = 'Accessories';

-- 20. Minimum Price in Furniture Category
SELECT MIN(Price) FROM Sales WHERE Category = 'Furniture';

-- 21. Count of Sales After a Specific Date
SELECT COUNT(*) FROM Sales WHERE SaleDate > '2024-03-01';

-- 22. Maximum Quantity Sold in a Single Day
SELECT MAX(Quantity) FROM Sales;

-- 23. Minimum Quantity Sold in a Single Day
SELECT MIN(Quantity) FROM Sales;

-- 24. Total Value of Sales Made Before a Specific Date
SELECT SUM(Quantity * Price) FROM Sales WHERE SaleDate < '2024-04-01';

-- 25. Maximum Quantity of a Single Product Sold
SELECT MAX(Quantity) FROM Sales;
