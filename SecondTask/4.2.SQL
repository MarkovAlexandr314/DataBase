SELECT Title, count(*) as TrackCount
from albums
JOIN tracks
on tracks.AlbumId = albums.AlbumId
GROUP by albums.AlbumId