--What salaries are other teams paying?

SELECT teams.name, ROUND(AVG(salary), 2) AS ["average salary"]
FROM salaries
JOIN teams ON salaries.team_id = teams.id
WHERE salaries.year = 2001
GROUP BY teams.name
ORDER BY ROUND(AVG(salary), 2) ASC
LIMIT 5