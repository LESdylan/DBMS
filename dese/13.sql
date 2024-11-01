SELECT name, AVG(graduated) FROM "schools"
JOIN graduation_rates ON schools.id = graduation_rates.school_id
GROUP BY city
HAVING AVG(graduated) >= (SELECT graduated FROM graduation_rates)
ORDER BY AVG(graduated) DESC