-- SELECT InvoiceLine.InvoiceLineId, Track.Name, Track.Composer
-- FROM InvoiceLine
--     JOIN Track
--         ON InvoiceLine.TrackId = Track.TrackId
-- ORDER BY InvoiceLineId;

SELECT InvoiceId,
    Track.Name AS Track_Name,
    Artist.Name AS Artist_Name
FROM InvoiceLine
    JOIN Track ON InvoiceLine.TrackId = Track.TrackId
    JOIN Album ON Track.AlbumId = Album.AlbumId
    JOIN Artist ON Album.ArtistId = Artist.ArtistId
