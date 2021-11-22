SELECT Employee.FirstName || ' ' || Employee.LastName AS Sales_Agent, SUM(Invoice.Total) AS Total_Sales
FROM Employee
JOIN Customer
ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice
ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Employee.EmployeeId
ORDER BY MAX(Invoice.Total) ASC
LIMIT 1
