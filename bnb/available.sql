CREATE VIEW available AS
SELECT
    l.id AS id,
    l.property_type AS property_type,
    l.host_name AS host_name,
    a.date AS date
FROM listings l
JOIN availabilities a ON a.listing_id = l.id
WHERE a.available = "TRUE";