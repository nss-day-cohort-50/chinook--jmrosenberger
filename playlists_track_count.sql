SELECT PlayList.Name, COUNT(PlayListTrack.TrackId)
FROM Playlist
    JOIN PlaylistTrack
        ON PlayListTrack.PlayListId = PlayList.PlaylistId
    JOIN Track
        ON Track.TrackId = PlaylistTrack.TrackId
GROUP BY Playlist.Name




