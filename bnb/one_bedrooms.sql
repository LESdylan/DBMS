CREATE VIEW one_bedrooms AS
SELECT
    listings.id,
    listings.property_type,
    listings.host_name,
    listings.accommodates
FROM listings
WHERE listings.bedrooms = 1;