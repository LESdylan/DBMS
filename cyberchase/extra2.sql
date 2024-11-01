SELECT
strftime('%Y', air_date) AS year,
title AS episode
FROM episodes
GROUP BY strftime('%Y', air_date);