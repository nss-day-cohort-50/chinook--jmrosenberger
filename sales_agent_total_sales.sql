SELECT Employee.FirstName AS Employee_First_Name, Employee.LastName AS Employee_Last_Name, SUM(Invoice.Total) AS Total_Sales
FROM Invoice
JOIN Customer
ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee
ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId;

