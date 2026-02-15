1. Subqueries

Used a query inside another query to filter users older than the average age.

SELECT name, age
FROM users
WHERE age > (SELECT AVG(age) FROM users);

2. AS Keyword

Created aliases for better readability.

SELECT name AS user_name, age AS user_age
FROM users;

3. Working with Multiple Tables

Learned how to combine information from different tables.

4. countries Table

Used a separate table to store country information.

SELECT *
FROM countries;

5. Linking Tables

Connected users and countries using the foreign key country_id.

SELECT u.name, c.country_name
FROM users u
JOIN countries c
ON u.country_id = c.id;

6. JOIN (1) – INNER JOIN

Returned only users who have matching country information.

SELECT u.name, c.country_name
FROM users u
INNER JOIN countries c
ON u.country_id = c.id;

7. JOIN (2) – LEFT JOIN

Returned all users, including those without matching countries or teams.

SELECT u.name, c.country_name
FROM users u
LEFT JOIN countries c
ON u.country_id = c.id;

8. teams Table

Used the teams table to store users’ team information.

SELECT *
FROM teams;

9. LEFT JOIN Practice

Combined users with teams, keeping all users even if they have no team.

SELECT u.name, t.team_name
FROM users u
LEFT JOIN teams t
ON u.id = t.user_id;

10. Joining 3 Tables

Combined users, countries, and teams to see complete information.

SELECT u.name, c.country_name, t.team_name
FROM users u
LEFT JOIN countries c
ON u.country_id = c.id
LEFT JOIN teams t
ON u.id = t.user_id;

11. Comprehensive Exercise

Applied subqueries, aliases, and multiple joins together.

SELECT u.name AS user_name,
       c.country_name AS country,
       t.team_name AS team
FROM users u
LEFT JOIN countries c
ON u.country_id = c.id
LEFT JOIN teams t
ON u.id = t.user_id
WHERE u.age > (SELECT AVG(age) FROM users);

Takeaway:
Today, I practiced connecting multiple tables, using subqueries, aliases, and different types of joins (INNER JOIN, LEFT JOIN). This helps me understand how to extract meaningful insights from relational databases, a key skill for data analysis.