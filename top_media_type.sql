WITH MediaTypeCount AS (
    SELECT mt.Name,
    COUNT(il.InvoiceLineId) AS TrackSales
    FROM InvoiceLine il
    JOIN Track t ON t.TrackId = il.TrackId
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.Name
ORDER BY TrackSales DESC
)
SELECT Name
FROM MediaTypeCount
WHERE TrackSales = (
    SELECT MAX(TrackSales)
    FROM MediaTypeCount
)