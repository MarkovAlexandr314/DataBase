SELECT user_id, SUM(win) - SUM(bet) AS balance
FROM LOG1
WHERE bet IS NOT NULL
GROUP BY user_id;