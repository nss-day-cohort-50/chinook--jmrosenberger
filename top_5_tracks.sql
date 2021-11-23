SELECT T.Name as TrackName, SUM(IL.UnitPrice * IL.Quantity) * COUNT(*) as TotalSales
FROM Track T
JOIN InvoiceLine IL
    ON T.TrackId = IL.TrackId
GROUP BY TrackName
ORDER BY TotalSales DESC
LIMIT 5;