SELECT "city", COUNT("id") AS "number of Public school"
FROM "schools"
Where "type"= 'Public School'
GROUP BY "city"
ORDER BY COUNT("id") DESC, "city" ASC
LIMIT 10;