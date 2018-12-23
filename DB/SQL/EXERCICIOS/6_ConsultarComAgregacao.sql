SELECT
    Regiao AS 'Região',
    SUM(Populacao) AS Total
FROM Estado
GROUP BY Regiao
ORDER BY Total DESC;

SELECT
    AVG(Populacao) AS Total
FROM Estado