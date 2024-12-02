SELECT Title, (
			SELECT count(*)
			FROM tracks
			WHERE tracks.AlbumId = albums.AlbumId
			) as TrackCount
from albums