SELECT
    print_number,
    english_title AS translated,
    artist,
    average_color,
    entropy AS rate
FROM
    views
WHERE
    artist = 'Hiroshige'
ORDER BY
    contrast ASC;