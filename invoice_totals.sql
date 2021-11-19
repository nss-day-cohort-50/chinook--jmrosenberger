SELECT Invoice.Total, Customer.FirstName AS CustomerFirstName, Customer.LastName AS CustomerLastName, Customer.Country, Employee.FirstName AS AgentFirstName, Employee.LastName AS AgentLastName
FROM Invoice
    JOIN Customer
        ON Invoice.CustomerId = Customer.CustomerId
    JOIN Employee
        ON Customer.SupportRepId = Employee.EmployeeId
