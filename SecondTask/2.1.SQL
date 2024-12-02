SELECT LastName, FirstName
FROM customers
WHERE (LastName, FirstName) NOT IN 
				(SELECT LastName, FirstName 
				FROM employees)