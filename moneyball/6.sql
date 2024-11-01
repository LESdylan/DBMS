SELECT
    t.name AS "team name",
    SUM(perf.H) AS "total hits"
FROM teams t
    JOIN performances perf ON perf.team_id = t.id
WHERE perf.year = 2001
GROUP BY t.name
ORDER BY "total hits" DESC
LIMIT 5