SELECT SUM(UnitPrice * Quantity) AS TotalPrice
FROM sales_items
INNER JOIN sales
    ON sales_items.SalesId = sales.SalesId
WHERE SalesDate >= '2012-01-01 00:00:00'
	  AND SalesDate < '2012-04-01 00:00:00'
	  AND ShipCountry = 'USA'