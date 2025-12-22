CREATE TABLE  Customers(
Customer_id SERIAL PRIMARY KEY,
First_name VARCHAR(80),
Last_name VARCHAR(80),
Email VARCHAR(80),
City VARCHAR(80),
Created_at DATE
);

CREATE TABLE Products(
Product_id SERIAL PRIMARY KEY,
Product_name VARCHAR(80),
Product_category VARCHAR(80),
Price NUMERIC(10,2)
);


CREATE TABLE  ORDERS(
Order_id SERIAL PRIMARY KEY,
Customer_id INT,
Order_Date VARCHAR(80),
Status VARCHAR(89)
);
CREATE TABLE order_items(
Order_Item_id SERIAL PRIMARY KEY,
Order_id INT,
Product_it INT,
Quantity INT
);

CREATE TABLE  Payments(
Payment_id SERIAL PRIMARY KEY,
Order_id INT,
Payment_mode VARCHAR(70),
Payment_date DATE,
Amount Numeric(10,2)
);







