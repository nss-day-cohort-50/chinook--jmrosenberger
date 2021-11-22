-- Which sales agent made the most in sales in 2009?

-- HINT: Use the MAX function on a subquery.

SELECT Employee.FirstName || ' ' || Employee.LastName AS Sales_Agent, SUM(Invoice.Total) AS Total_Sales_2009
FROM Employee
JOIN Customer
ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice
ON Invoice.CustomerId = Customer.CustomerId
WHERE Invoice.InvoiceDate LIKE "2009%"
GROUP BY Employee.EmployeeId
ORDER BY MAX(Invoice.Total) DESC
LIMIT 1
