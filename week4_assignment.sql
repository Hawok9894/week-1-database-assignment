-- week4_assignment.sql
-- Week 4: Advanced SQL - SUM, AVG, MAX, GROUP BY, ORDER BY, LIMIT

-- Query 1: SUM() - Total sales amount
SELECT SUM(amount) AS total_sales
FROM sales;

-- Query 2: AVG() with GROUP BY - Average price per category
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category;

-- Query 3: MAX() with GROUP BY and ORDER BY - Highest price per category
SELECT category, MAX(price) AS max_price
FROM products
GROUP BY category
ORDER BY max_price DESC;

-- Query 4: GROUP BY + ORDER BY + LIMIT - Top 3 customers by order count
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC
LIMIT 3;
