SELECT LastName, FirstName
FROM customers
EXCEPT SELECT LastName, FirstName
FROM employees;