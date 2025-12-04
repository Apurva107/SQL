--- QUERY DATA SELECT 2----

/* HAVING CLAUSE- FILTER AGGREGATED DATA(Filter data after aggregation) can use HAVING only after using the GROUP BY */


---Find the average score for each country considering only customers with a score not equal to 0 and return only those countries with an average score greater than 430 */---
SELECT 
	country,
	AVG(score) AS average_acore
FROM customers
WHERE score != 0
GROUP BY country , score
HAVING AVG(score) > 430;


/* DISTINCT - REMOVE DUPLICATES(Repeated Values) Each values appears only once in results */
-- Dont use DISTINCT unless its necessary, it can slow down query---

---Return Unique list of all countries---
SELECT DISTINCT
	country
FROM customers;


/* TOP - LIMIT DATA- Restrict the Number of Rows Returned in the results*/

-----Retrieve only 3 Customers---
SELECT TOP 3 *
FROM customers;

---Retrieve the Top 3 Customers with the Highest Scores--
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

-- Retrieve the Lowest 2 Customers based on the score--
SELECT TOP 2*
FROM customers
ORDER BY score ASC;

-- Get the Two Most Recent Orders--
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC;


/* Calculate the average score for each country considering only customers with a score not equal to 0
   and return only those countries with an average score greater than 430
   and sort the results by the highest average score first. */
SELECT
	country,
	AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) >430
ORDER BY AVG(score) DESC;
