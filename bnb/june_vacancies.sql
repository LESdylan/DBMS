CREATE VIEW june_vacancies AS
SELECT
    l.id AS id,
    l.property_type AS property_type,
    l.host_name AS host_name,
    COUNT(a.date) AS days_vacant
FROM listings l
JOIN availabilities a ON a.listing_id = l.id
WHERE a.date LIKE '2023-06%' AND a.available = "TRUE"
GROUP BY l.id, l.property_type, l.host_name;