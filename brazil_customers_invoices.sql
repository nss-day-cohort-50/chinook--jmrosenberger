SELECT FirstName, LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer
    INNER JOIN Invoice
        ON Customer.CustomerId = Invoice.customerId
    WHERE Country = "Brazil"