SELECT LastName, FirstName
FROM sales
JOIN customers
ON customers.CustomerId = sales.CustomerId
WHERE strftime('%Y', SalesDate) = '2009' AND ShipCity = 'Berlin' AND Country = 'Germany'