SELECT geo, SUM(win) AS total_wins
FROM LOG1
JOIN USERS ON LOG1.user_id = USERS.user_id AND geo IS NOT NULL
GROUP BY geo
ORDER BY total_wins DESC;