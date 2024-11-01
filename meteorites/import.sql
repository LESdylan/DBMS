CREATE TABLE IF NOT EXISTS meteorites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    class VARCHAR(255) NOT NULL,
    mass DECIMAL(10, 2),
    discovery ENUM('Fell', 'Found') NOT NULL,
    year INT,
    lat DECIMAL(10, 6),
    long DECIMAL(10, 6)
);

CREATE TABLE IF NOT EXISTS meteorites_temp (
    name VARCHAR(255),
    id VARCHAR(255),
    nametype VARCHAR(255),
    recordclass VARCHAR(255),
    mass VARCHAR(255),
    fall VARCHAR(255),
    year VARCHAR(255),
    recordlat VARCHAR(255),
    recordlong VARCHAR(255)
);

INSERT INTO meteorites (name, class, mass, discovery, year, lat, long)
SELECT
    name,
    recordclass AS class,
    CASE
        WHEN TRIM(mass) = '' THEN NULL
        ELSE ROUND(CAST(mass AS DECIMAL(10, 2)), 2)
    END AS mass,
    fall AS discovery,
    CASE
        WHEN TRIM(year) = '' THEN NULL
        ELSE CAST(SUBSTR(year, 1, 4) AS INT)
    END AS year,
    CASE
        WHEN TRIM(recordlat) = '' THEN NULL
        ELSE ROUND(CAST(recordlat AS DECIMAL(10, 6)), 6)
    END AS lat,
    CASE
        WHEN TRIM(recordlong) = '' THEN NULL
        ELSE ROUND(CAST(recordlong AS DECIMAL(10, 6)), 6)
    END AS long
FROM meteorites_temp
WHERE nametype != 'Relict'
ORDER BY year DESC, name ASC;

DROP TABLE IF EXISTS meteorites_temp;
