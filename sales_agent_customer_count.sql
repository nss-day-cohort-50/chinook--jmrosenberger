SELECT Employee.FirstName || ' ' || Employee.LastName AS Sales_Agent, COUNT(Customer.SupportRepId) AS Total_Clients
FROM Customer
JOIN Employee
    ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId;
    


