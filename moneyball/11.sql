SELECT
    p.first_name,
    p.last_name,
    s.salary / perf.H AS 'dollars per hit'
FROM
    performances perf
    JOIN
    players p ON perf.player_id  = p.id
    JOIN
    salaries s ON s.player_id = p.id AND s.year = perf.year
WHERE
    s.year= 2001
    AND perf.year = 2001
    AND s.salary / perf.H >0
ORDER BY
    s.salary / perf.H ASC,
    p.first_name ASC,
    p.last_name ASC
LIMIT 10;