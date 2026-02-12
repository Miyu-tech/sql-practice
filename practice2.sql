Arithmetic Operations + Aggregate Functions
Perform calculations inside SELECT

SELECT price * quantity AS total_price
FROM orders;

SUM

Calculate total value

SELECT SUM(price) AS total_sales
FROM orders;

AVG

Calculate average value

SELECT AVG(price) AS average_price
FROM products;

COUNT

Count number of records

SELECT COUNT(*) AS total_users
FROM users;

MAX / MIN

Get highest or lowest value

SELECT MAX(price) AS highest_price,
       MIN(price) AS lowest_price
FROM products;

GROUP BY

Group data by specific column

SELECT category, COUNT(*)
FROM products
GROUP BY category;

GROUP BY (Multiple Columns)

Group using multiple conditions

SELECT category, brand, COUNT(*)
FROM products
GROUP BY category, brand;

GROUP BY + WHERE

Filter before grouping

SELECT category, SUM(price)
FROM products
WHERE price > 100
GROUP BY category;

HAVING

Filter after grouping

SELECT category, COUNT(*)
FROM products
GROUP BY category
HAVING COUNT(*) > 5;


--What I Learned

The difference between WHERE and HAVING
How aggregation functions summarize data
The execution order of SQL:
DISTINCT
SUM
AVG
MAX/MIN
GROUP BY
HAVING
SELECT
ORDER BY

Key Takeaways
WHERE filters rows before grouping
HAVING filters grouped results
Aggregate functions are essential for data analysis
GROUP BY is heavily used in real-world analytics queries