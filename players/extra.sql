-- Write a single SQL query to list the first and last names of all players of above average height, sorted tallest to shortest, then by first and last name.

SELECT "first_name" , "last_name"
FROM players
WHERE "weight" > (SELECT AVG(weight) FROM players) AND "height" IS NOT NULL
ORDER BY height DESC, first_name, last_name; -- ensure that if two players have the same height, they will be sorted by their first name and last_name.