SELECT first_name, last_name
FROM players
WHERE birth_country NOT IN("USA")
ORDER BY first_name, last_name;