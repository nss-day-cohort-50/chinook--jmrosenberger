SELECT InvoiceLine.InvoiceLineId, Track.Name, Track.Composer
FROM InvoiceLine
    JOIN Track
        ON InvoiceLine.TrackId = Track.TrackId
ORDER BY InvoiceLineId