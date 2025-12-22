-- Display customer names along with their order IDs.
-- One-Line Rule (Memorize This)
-- If the question needs data that MUST exist in both tables → use INNER JOIN

SELECT c.first_name, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id=o.customer_id;

-- Show order details with product names and quantities.
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM order_items;
SELECT o.order_id,o.status,p.product_name,oi.quantity
FROM orders o
INNER JOIN 
order_items oi 
ON
o.order_id=oi.order_id
INNER  JOIN products p
ON oi.product_id =p.product_id;



-- Display order IDs with payment mode and amount.
SELECT * FROM orders;
SELECT * FROM payments;

SELECT o.order_id, p.payment_mode,p.amount
FROM orders o
INNER  JOIN
payments p
ON o.order_id=p.order_id;

-- List customer names with their total number of orders.
SELECT * FROM customers;
SELECT * FROM order_items;
SELECT * FROM orders;

SELECT c.first_name,o.order_date,oi.quantity
FROM customers c
INNER JOIN 
orders o
ON 
c.customer_id=o.customer_id
INNER JOIN order_items oi
ON o.order_id=oi.order_id;-- wrong  queiry 


SELECT * FROM customers;
SELECT * FROM orders;

SELECT c.first_name,COUNT(o.order_id) AS total_orders
FROM customers c
INNER  JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.first_name;

-- Show product names with total quantity sold.
SELECT * FROM products;
SELECT * FROM order_items;

SELECT p.product_name,SUM(o.quantity) as total_quantity
FROM products p
INNER  JOIN order_items o
ON p.product_id=o.product_id
GROUP BY p.product_name;

-- Find customers who have never placed an order.

SELECT * FROM customers;
SELECT * FROM orders;

SELECT c.customer_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id=o.customer_id
WHERE o.order_id IS NULL;



-- Display products that have never been sold.
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM payments;
-- Display products that have never been sold.
SELECT p.product_name,o.order_id 
FROM products p 
LEFT JOIN order_items o 
ON p.product_id=o.product_id
WHERE o.product_id IS NULL;

-- Show orders that do not have any payment record.

SELECT * FROM orders;
SELECT * FROM payments;

SELECT o.order_id,o.order_date,p.payment_mode
FROM orders o 
LEFT JOIN payments p
 ON o.order_id=p.order_id
 WHERE p.payment_mode IS NULL;


SELECT * FROM customers;
 SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM payments;
-- Display customer name, order ID, product name, and quantity ordered.
SELECT c.first_name,o.order_id,p.product_name,oi.quantity AS total_quantity
FROM customers c
INNER JOIN orders o
ON c.customer_id=o.customer_id
INNER JOIN  order_items oi
ON
o.order_id=oi.order_id
INNER JOIN products  p 
ON 
oi.product_id=p.product_id;



SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM payments;
-- Show customer name, order date, payment mode, and payment amount.
SELECT 
    c.first_name,
    o.order_date,
    p.payment_mode,
    p.amount
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
INNER JOIN payments p
    ON p.order_id = o.order_id;




