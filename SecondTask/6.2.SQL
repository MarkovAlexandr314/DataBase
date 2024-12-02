SELECT LastName, sales.CustomerId
FROM customers
JOIN sales
ON customers.CustomerId = sales.CustomerId
GROUP BY customers.CustomerId
HAVING count(customers.CustomerId) > 30