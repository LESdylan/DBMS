SELECT "year", ROUND(AVG("salary"), 2) AS 'salaries averages'
FROM "salaries"
GROUP BY "year"
ORDER BY "year" DESC