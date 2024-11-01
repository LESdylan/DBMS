SELECT
    p.first_name,
    p.last_name,
    s.salary,
    combined.year,
    perf.HR AS home_runs
FROM
    players p
JOIN
    (SELECT player_id, year FROM salaries
     UNION
     SELECT player_id, year FROM performances) combined
     ON p.id = combined.player_id
    JOIN
    salaries s ON p.id = s.player_id AND combined.year = s.year
    JOIN
    performances perf ON p.id = perf.player_id AND combined.year = perf.year
ORDER BY
    p.id ASC,
    combined.year DESC,
    perf.HR DESC,
    s.salary DESC
;