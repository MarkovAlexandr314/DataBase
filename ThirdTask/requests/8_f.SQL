SELECT AVG(count_records)
FROM (SELECT l.user_id, COUNT(*) AS count_records
	FROM LOG1 l
	JOIN (
		SELECT user_id, MIN(bet) AS first_bet_time
		FROM LOG1
		GROUP BY user_id
	) AS fb ON l.user_id = fb.user_id
	WHERE l.user_time < fb.first_bet_time
	GROUP BY l.user_id
	)