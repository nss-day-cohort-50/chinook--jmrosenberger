SELECT T.Name AS Track_Name, SUM(L.Quantity) AS Number_Sold
FROM InvoiceLine L
JOIN Track T
    ON T.TrackId = L.TrackId
JOIN Invoice I
    ON I.InvoiceId = L.InvoiceId
WHERE I.InvoiceDate LIKE '2013%'
GROUP BY Number_Sold;




-- SELECT COUNT(I.TrackId) * SUM(I.Quantity) AS Total
-- FROM InvoiceLine I
-- GROUP BY I.TrackId
-- ORDER BY Total DESC



SELECT SUM(Track.UnitPrice) AS Total_Sales, Track.Name AS Most_Popular_Song
FROM Invoice
JOIN InvoiceLine
    ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId
WHERE InvoiceDate LIKE "2013%"
GROUP BY Track.Name
ORDER BY InvoiceLine.UnitPrice DESC
