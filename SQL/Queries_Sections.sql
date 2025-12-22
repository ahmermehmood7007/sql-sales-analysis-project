

-- SECTION A 
	--BASIC SELECT

-- 1) Display all rows from the customers table.
SELECT * FROM customers;
SELECT COUNT(*) FROM customers;

-- 2)Show only first name, last name, and city of all customers.
SELECT first_name,last_name,city FROM customers;

-- 3)List all products with their category and price.

SELECT Product_name,product_category,price FROM  products;

-- 4)Display all orders placed in the system.
SELECT * FROM orders;
SELECT COUNT(*) FROM orders;

-- 5)Show all payment records with payment date and amount.
SELECT * FROM payments;
SELECT payment_date,amount FROM payments;



		-- SECTION B

-- 1)List all unique cities where customers are located.
SELECT * FROM customers;
SELECT DISTINCT(city) FROM customers;

-- 2)Show distinct product categories available.
SELECT * FROM products;
SELECT DISTINCT(category) FROM products;

ALTER TABLE  products
RENAME product_category TO category;


-- 3)Display all unique payment modes used.
SELECT * FROM payments;

SELECT DISTINCT(payment_mode) FROM payments;


-- SECTION C — WHERE
-- Display customers who live in Lahore.
SELECT* FROM customers;

SELECT first_name,city  FROM customers WHERE city='Lahore';

-- Find products that cost more than 100,000.

SELECT* FROM products;

SELECT product_name,price FROM products WHERE price>100000;


-- Show orders with status “Completed”.
SELECT * FROM orders;

SELECT order_id,status FROM orders WHERE status='Completed';


-- Display payments made using Credit Card.

SELECT payment_mode FROM payments WHERE payment_mode='Credit Card';


-- List customers created after 1st February 2024.
SELECT * FROM customers;

SELECT first_name ,created_at FROM customers WHERE created_at>'2024-02-01';

-- SECTION D  


-- Find customers from Lahore whose first name starts with “A”.
SELECT * FROM customers;

SELECT first_name FROM customers WHERE first_name LIKE 'A%';


-- Display products in Electronics category with price above 150,000.
SELECT * FROM products;
SELECT product_name,price FROM products WHERE price>150000;

-- Show orders that are not cancelled.

SELECT * FROM orders;

SELECT status FROM orders WHERE status NOT LIKE 'Cancelled';

-- List customers from Karachi or Islamabad.
SELECT first_name, city  FROM customers WHERE city ='Karachi' OR city ='Islamabad';

  		-- SECTION E

-- Find customers whose email contains “gmail”.

SELECT first_name,email FROM customers WHERE email LIKE '%gmail%';

-- Display products whose name contains the word “Laptop”.
SELECT * FROM products;

SELECT product_name FROM products WHERE product_name LIKE '%Laptop%';


-- List customers whose first name starts with “M”.

SELECT first_name FROM customers WHERE first_name LIKE 'M%';

-- Show customers whose last name ends with “n”.
SELECT last_name FROM customers WHERE last_name LIKE '%n';


-- SECTION F
-- Display customers living in Lahore, Karachi, or Islamabad.
SELECT * FROM customers WHERE city IN ('Lahore','Karachi','Islamabad');

-- Find products that belong to Electronics or Accessories categories.

SELECT * FROM products;

SELECT * FROM products WHERE category IN('Electronics','Accessories');

-- Show orders whose status is either Completed or Pending.
SELECT  * FROM  orders;
SELECT * FROM orders WHERE status IN('Completed','Pending');

-- SECTION G

-- Find products priced between 20,000 and 100,000.

SELECT price FROM products WHERE price BETWEEN 20000 AND 100000;

-- Display orders placed between two given dates.
SELECT * FROM orders;

SELECT * FROM orders WHERE order_date BETWEEN '2024-03-01' AND '2024-03-20';

-- Show payments made between March 1 and March 31.
SELECT amount,payment_date FROM payments
WHERE payment_date 
BETWEEN '2024-03-01' AND '2024-03-31';

-- SECTION H

-- List products sorted by price from highest to lowest.
SELECT * FROM products;

SELECT product_name,price FROM products ORDER BY price DESC;

-- Display customers sorted by creation date (oldest first).
SELECT * FROM customers;
SELECT first_name,created_at FROM customers  ORDER BY created_at DESC;


-- SECTION I 
-- Count total number of customers.
SELECT COUNT(*) FROM customers;
-- Find total number of orders placed.
SELECT COUNT(*) FROM orders;

-- Calculate total revenue from all payments.
SELECT * FROM payments;
SELECT SUM(amount) AS total_revenue FROM payments;

-- Find average product price.
SELECT * FROM products;

SELECT AVG(price) AS AVG_PRO_PRICE FROM products;

-- Display the highest product price.

SELECT price AS highest_price
FROM products
ORDER BY price DESC LIMIT 1;



-- SECTION J

-- Show number of customers in each city.
SELECT * FROM customers;

SELECT COUNT(first_name),city FROM customers 
GROUP BY city;

-- Display number of products in each category.
SELECT COUNT(product_name) AS number_of_products,category FROM products
GROUP BY category;

-- Find total number of orders placed by each customer.
SELECT COUNT(order_id)AS totalnumberoforders FROM orders GROUP BY customer_id;

-- Calculate total revenue for each payment mode. 
SELECT * FROM payments;
SELECT payment_mode, SUM(amount) AS total_revenue FROM payments
GROUP BY payment_mode;

-- Show number of orders by status.
SELECT * FROM orders;

SELECT status, count(order_id) AS number_of_status FROM orders
GROUP BY status;

-- Display customer names along with their order IDs.
SELECT * FROM customers;
SELECT * FROM orders;

SELECT c.first_name, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id=o.customer_id;










