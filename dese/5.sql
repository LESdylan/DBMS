SELECT "city", COUNT("id") AS "number of Public school"
FROM "schools"
Where "type"= 'Public School'
GROUP BY "city"
HAVING COUNT("id") <= 3
ORDER BY COUNT("id") DESC, "city" ASC