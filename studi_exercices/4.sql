SELECT `NomVendeur`,  SUM(`MontantVente`)
FROM `Ventes`
GROUP BY `NomVendeur`;