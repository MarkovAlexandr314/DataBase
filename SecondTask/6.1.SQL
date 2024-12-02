SELECT LastName
FROM customers
WHERE CustomerId IN (
    SELECT sales.CustomerId
    FROM sales
    GROUP BY sales.CustomerId
    HAVING COUNT(*) > 30
);