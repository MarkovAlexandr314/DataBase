SELECT SUM(UnitPrice * Quantity) as TotalSales
FROM sales_items
WHERE SalesId IN (
    SELECT SalesId 
    FROM sales 
    WHERE SalesDate >= '2012-01-01 00:00:00'
    AND SalesDate < '2012-04-01 00:00:00' 
    AND ShipCountry = 'USA'
)