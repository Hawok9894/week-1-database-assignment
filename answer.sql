-- Week 6 Assignment: SQL Joins and Relationships
-- Classic Models Database

-- Question 1: INNER JOIN - Employees and Offices
-- Retrieve employee names with their office city
SELECT e.firstName, e.lastName, o.city, o.country
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2: LEFT JOIN - Customers and Orders
-- Retrieve all customers and their orders (including customers with no orders)
SELECT c.customerName, c.customerNumber, o.orderNumber, o.orderDate
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber;

-- Question 3: RIGHT JOIN - Orders and OrderDetails with Products
-- Retrieve orders with product details
SELECT o.orderNumber, p.productName, od.quantityOrdered, od.priceEach
FROM orderdetails od
RIGHT JOIN orders o ON od.orderNumber = o.orderNumber
LEFT JOIN products p ON od.productCode = p.productCode;
