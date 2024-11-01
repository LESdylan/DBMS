WITH least_expensive_per_hit AS (
    SELECT
        p.id,
        p.first_name,
        p.last_name,
        s.salary / perf.H AS dollars_per_hit
    FROM
        players p
    JOIN
        salaries s ON p.id = s.player_id
    JOIN
        performances perf ON p.id = perf.player_id AND s.year = perf.year
    WHERE
        s.year = 2001
        AND perf.year = 2001
        AND perf.H > 0
    ORDER BY
        dollars_per_hit ASC,
        p.first_name ASC,
        p.last_name ASC
    LIMIT 10
),
least_expensive_per_rbi AS (
    SELECT
        p.id,
        p.first_name,
        p.last_name,
        s.salary / perf.RBI AS dollars_per_rbi
    FROM
        players p
    JOIN
        salaries s ON p.id = s.player_id
    JOIN
        performances perf ON p.id = perf.player_id AND s.year = perf.year
    WHERE
        s.year = 2001
        AND perf.year = 2001
        AND perf.RBI > 0
    ORDER BY
        dollars_per_rbi ASC,
        p.first_name ASC,
        p.last_name ASC
    LIMIT 10
)
SELECT DISTINCT
    lhp.first_name,
    lhp.last_name
FROM
    least_expensive_per_hit lhp
JOIN
    least_expensive_per_rbi lrp ON lhp.id = lrp.id
ORDER BY
    lhp.id ASC;