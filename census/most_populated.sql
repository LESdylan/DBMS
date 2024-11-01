CREATE VIEW most_populated AS
SELECT
    district,
    SUM(families) AS "total_of_families",
    SUM(households) AS "total_of_households",
    SUM(population) AS "total_of_population",
    SUM(male) AS "total_of_male",
    SUM(female) AS "total_of_female"
FROM census
GROUP BY district
ORDER BY total_of_population DESC;