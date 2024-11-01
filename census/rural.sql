CREATE VIEW rural AS
SELECT
    id AS "number_of_rural_district",
    district,
    locality,
    families AS "families",
    housholds,
    population,
    male,
    female
FROM census
WHERE locality LIKE "% Rural %";