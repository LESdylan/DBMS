SELECT
    NomVendeur,
    SUM(MontantVente)
FROM 
    Ventes
WHERE 
    DateVente > DATE_ADD(NOW(), INTERVAL -1 YEAR)
GROUP BY
    NomVendeur
HAVING 
    SUM(MontantVente) > 10000