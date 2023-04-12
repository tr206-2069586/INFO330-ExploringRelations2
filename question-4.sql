-- Which sales agent made the most in sales in 2010?
SELECT 
	employees.FirstName,
	employees. LastName,
	COUNT() Sales
FROM employees 
JOIN customers 
	ON  employees.EmployeeId = customers.SupportRepId
JOIN invoices 
	ON customers.CustomerId = invoices.CustomerId
WHERE substr(invoices.InvoiceDate,1,4) == '2010'
GROUP BY employees.FirstName
ORDER BY Sales DESC


