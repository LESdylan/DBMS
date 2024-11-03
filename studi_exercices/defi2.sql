SELECT 
    Ville,
    SUM(MontantVente) AS `total`, 
    RANK() OVER (ORDER BY `total` DESC) AS `ranking`
FROM 
    Magasins
GROUP BY 
    Ville
ORDER BY 
    `total` DESC;
LIMIT 20, 10;

SELECT 
    Nom,
    Ville,
    MontantVente,
    SUM(MontantVente) OVER(PARTITION BY `ville`)
FROM 
    Magasins
ORDER BY 
    Ville;

