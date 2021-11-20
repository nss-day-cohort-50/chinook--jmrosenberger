SELECT COUNT(InvoiceLineId) AS InvoiceLineId, InvoiceId
FROM InvoiceLine
WHERE InvoiceLine.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceId