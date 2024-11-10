1)
SELECT LastName, FirstName  
FROM customers
WHERE City = 'Prague' 

2.1)
SELECT LastName, FirstName
From customers
WHERE FirstName like 'M%'

2.2)
SELECT LastName, FirstName
FROM customers
WHERE FirstName like '%ch%'

3)
SELECT Name, Bytes / 1048576 as MB
FROM tracks

4)
SELECT LastName, FirstName
FROM employees
where strftime('%Y', HireDate) = '2002' AND City = 'Calgary'

5)
SELECT LastName, FirstName
FROM employees
where cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', BirthDate) as int) >= 40

6)
SELECT *
FROM customers
WHERE Country = "USA" AND Fax is NULL

7)
SELECT ShipCity
FROM sales
WHERE ShipCountry = 'Canada' AND (cast(strftime('%m', SalesDate) as int) = 8 OR cast(strftime('%m', SalesDate) as int) = 9)

8)
SELECT Email
FROM customers
WHERE Email like '%gmail.com'

9)
SELECT *
FROM employees
where cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', HireDate) as int) >= 18

10)
SELECT DISTINCT Title
FROM employees
Order by Title ASC

11)
SELECT LastName, FirstName, strftime('%Y', 'now') - Age AS BirthYear
FROM customers
ORDER BY LastName, FirstName;

12)
SELECT MIN(Milliseconds) AS shortest_track
FROM tracks

13)
SELECT Name, Milliseconds
FROM tracks
WHERE Milliseconds = (SELECT MIN(Milliseconds) FROM tracks)

14)
SELECT Country, AVG(Age) as MiddleAge
FROM customers
GROUP BY Country

15)
SELECT LastName
FROM employees
WHERE cast(strftime('%m', HireDate) as int) = 10

16)
SELECT LastName
FROM employees
ORDER BY HireDate
LIMIT 1
