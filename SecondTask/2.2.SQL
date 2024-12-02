SELECT customers.LastName, customers.FirstName
FROM customers
LEFT JOIN employees
on customers.LastName = employees.LastName AND customers.FirstName = employees.FirstName
WHERE employees.LastName IS NULL