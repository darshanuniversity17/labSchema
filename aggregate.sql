CREATE TABLE Sales (
    SaleID INT PRIMARY KEY identity(101,1),
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

-- 1. Total How many products were sold?
-- 2. What is the average price of all products?
-- 3. How much money was made from all sales?
-- 4. How many sales were recorded?(total count of product)
-- 5. What is the maximum sale price from all product?
-- 6. What is the minimum sale price from all product?
-- 7. What is the maximum quantity sold?
-- 8. What is the minimum quantity sold?
-- 9. How much money was made where category is Electronics?
-- 10. How many different product categories exist?
-- 11. What is the total price generated where category is Accessories?
-- 12. What is the total price generated where category is Furniture?
-- 13. What is the average of all Quantity ?
-- 14. What is the average price of products in the Electronics category?
-- 15. What is the total number of products sold?
-- 16. What is the highest price of a product in the Accessories category?
-- 17. What is the lowest price of a product in the Furniture category?
-- 18. How many sales happened after March 1, 2024?
