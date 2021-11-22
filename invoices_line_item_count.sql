SELECT Invoice.InvoiceId, COUNT(InvoiceLine.InvoiceLineId) AS Total_Line_Items
FROM InvoiceLine
JOIN Invoice
ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId