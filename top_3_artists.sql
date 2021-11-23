SELECT a.Name AS Artist, COUNT(il.InvoiceLineId) AS TrackSales
FROM InvoiceLine il
    JOIN Track t ON t.TrackId = il.TrackId
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    JOIN Album al ON al.AlbumId = t.AlbumId
    JOIN Artist a ON a.ArtistId = al.ArtistId
GROUP BY a.Name
ORDER BY TrackSales DESC
LIMIT 3;