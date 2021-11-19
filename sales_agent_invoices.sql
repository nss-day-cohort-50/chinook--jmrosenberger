SELECT Invoice.InvoiceId, Employee.FirstName, Employee.LastName
FROM Invoice    
    JOIN Customer
        ON Invoice.CustomerId = Customer.CustomerId
    JOIN Employee
        ON Customer.SupportRepId = Employee.EmployeeId