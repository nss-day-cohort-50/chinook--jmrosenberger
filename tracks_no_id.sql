SELECT Album.Title AS Album_Name, MediaType.Name AS Media_Type, Genre.Name AS Genre
FROM Track
JOIN Album
ON Track.AlbumId = Album.AlbumId
JOIN MediaType
ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre
ON Track.GenreId = Genre.GenreId