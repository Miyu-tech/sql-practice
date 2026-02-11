-- Retrieve all products from the database
SELECT *
FROM products;

-- Find expensive products
SELECT *
FROM products
WHERE price > 100;

-- Find users with missing email addresses
SELECT *
FROM users
WHERE email IS NULL;

-- Retrieve products that are available for purchase
SELECT *
FROM products
WHERE stock > 0;

-- Find the top 5 most expensive products
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

-- Retrieve the 3 cheapest products
SELECT *
FROM products
ORDER BY price ASC
LIMIT 3;

-- Retrieve latest orders
SELECT *
FROM orders
ORDER BY created_at DESC
LIMIT 10;


--------------------------
--What I Learned
--How to filter data using WHERE
--How to sort results
--How to limit returned rows
--Basic understanding of SQL query structure