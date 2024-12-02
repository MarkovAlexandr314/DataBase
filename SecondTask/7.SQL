SELECT genres.Name, AVG(UnitPrice) as AverageCost
from genres
JOIN tracks
on tracks.GenreId = genres.GenreId
GROUP by genres.GenreId