-- SQL SELECT QUERY----

/* SELECT ALL COLUMNS*/
-- retrieve all customer data
SELECT *
FROM customers;

---retrieve all order data
SELECT *
FROM orders;

/* SELECT FEW COLUMNS*/

---retrieve each customers name,country and score
SELECT 
	first_name,
	country,
	score
FROM customers;

/*WHERE - FILTER YOUR DATA BASED ON A CONDITION*/

--Retrieve customers with a score not equal to 0
SELECT *
FROM customers
WHERE score != 0;

-- Retrieve customers from germany
SELECT *
FROM customers
WHERE country = 'Germany';

---- Retrieve the name and country of customers from Germany
SELECT 
	first_name,
	country
FROM customers
WHERE country = 'Germany';


--ORDER BY -SORT DATA ASC/DESC (BY DEFAULT ITS ASC)---

/* Retrieve all customers and sort the results by the highest score first. */
SELECT *
FROM customers
ORDER BY score DESC;

/* Retrieve all customers and sort the results by the lowest score first. */
SELECT *
FROM customers
ORDER BY score ASC;

/* Retrieve all customers and sort the results by the country. */
SELECT *
FROM customers
ORDER BY country ASC;

/* Retrieve all customers and sort the results by the country and then by the highest score. */
SELECT *
FROM customers
ORDER BY country ASC, score DESC;

/* Retrieve the name, country, and score of customers whose score is not equal to 0 and sort the results by the highest score first. */
SELECT 
	first_name,
	country,
	score
FROM customers
WHERE score != 0
ORDER BY score DESC;


---GROUP BY AGGREGATE DATA(Combines rows with the same value.Aggregates a column by another column)--
--Rule: all columns in the SELECT must be either aggregated or included in the GROUP BY
--the result of GROUP BY determined by the unique values of the grouped columns

-- Find the total score for each country
SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country;

--Find the total score and total number of customers for each country
SELECT 
	country,
	SUM(score),
	COUNT(id) AS total_customer
FROM customers
GROUP BY country;








