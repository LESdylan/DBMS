SELECT ROUND(AVG("weight"), 2) AS "Average Weight Of Players", ROUND(AVG("height"),2) AS "AVERAGE Height Of Players"
FROM players
WHERE debut >= "2000-01-01";