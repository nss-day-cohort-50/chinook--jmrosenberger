WITH TrackCount AS (
    SELECT t.Name,
    COUNT(il.InvoiceLineId) AS "TrackSales"
    FROM InvoiceLine il
        JOIN Track t ON t.TrackId = il.TrackId
        JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    WHERE strftime('%Y', i.InvoiceDate) = "2013"
    GROUP BY t.Name
)
SELECT Name
FROM TrackCount
WHERE TrackSales = (
    SELECT MAX(TrackSales)
    FROM TrackCount
)
