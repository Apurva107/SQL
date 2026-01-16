USE SalesDB
GO


/*combine the data from employees and customers into one table*/

SELECT 
	FirstName,
	LastName
FROM Sales.Customers
UNION 
SELECT 
	FirstName,
	LastName
FROM Sales.Employees;

/*combine the data from employees and customers into one table,including duplicates*/
/*UNION ALL*./
