SELECT "title", "air_date"
FROM episodes
WHERE air_date BETWEEN '2018-01-01' AND '2023-12-31'
AND title LIKE '%by%'