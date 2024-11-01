SELECT "name"
FROM "graduation_rates"
JOIN "schools" on "graduation_rates"."school_id" = "schools"."id"
WHERE "graduated" = 100