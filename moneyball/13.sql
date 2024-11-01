--different types of join
SELECT first_name, last_name, birth_year
FROM (SELECT * FROM players WHERE birth_year BETWEEN 1934 AND 1950 ) AS filtered_players
JOIN salaries ON salaries.player_id = filtered_players.id
ORDER BY birth_year DESC, first_name ASC, last_name ASC