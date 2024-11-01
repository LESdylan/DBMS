CREATE VIEW frequently_reviewed AS
SELECT
    l.id AS id,
    l.property_type AS property_type,
    l.host_name AS host_name,
    a.comments AS review
FROM listings l
JOIN reviews a ON a.listing_id = l.id
ORDER BY a.date DESC, l.property_type ASC, l.host_name ASC
LIMIT 100;