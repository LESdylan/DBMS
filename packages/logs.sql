SELECT *
FROM((scans
JOIN packages on "scans"."package_id" = "packages"."id")
JOIN addresses on "scans"."address_id" = "addresses"."id")
WHERE "address" LIKE '2 Finn%' and "contents" = 'Congratulatory letter'

-- *** The Devious Delivery ***
SELECT "contents", "type"
FROM ((scans
    INNER JOIN "packages" on "scans"."package_id" = "packages"."id"
    INNER JOIN "addresses" on "scans"."address_id" = "addresses"."id"
))

WHERE from_address_id IS NULL AND action = 'Drop'


-- *** The Forgotten Gift ***



SELECT "name", "contents", "action", "timestamp", "address"
FROM(((scans
FULL JOIN "addresses" on "scans"."address_id" = "addresses"."id"
FULL JOIN "packages" on "scans"."package_id" = "packages"."id"
FULL JOIN "drivers" on "scans"."driver_id" = "drivers"."id"
)))
WHERE package_id= (
    SELECT "id"
    FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id"
        FROM "addresses"
        WHERE "address" = "109 Tileston Street"
        )
    )
;