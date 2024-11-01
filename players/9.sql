SELECT last_name, first_name, strftime('%Y', debut) AS debut_year
FROM players
WHERE strftime('%Y', debut) = '2022';