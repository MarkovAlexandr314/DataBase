SELECT tmptable.Name
FROM	(
	SELECT genres.Name, AVG(UnitPrice) as AverageCost
	from genres
	JOIN tracks
	on tracks.GenreId = genres.GenreId
	GROUP by genres.GenreId
	) as tmptable
WHERE tmptable.AverageCost > 1