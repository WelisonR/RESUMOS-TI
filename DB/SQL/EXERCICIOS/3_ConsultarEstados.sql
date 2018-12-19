SELECT * FROM Estado;

SELECT
    Nome AS 'Nome do Estado',
    Sigla
FROM Estado
WHERE Regiao = 'SUL';

SELECT
    Nome,
    Sigla,
    Populacao
FROM Estado
WHERE Populacao > 5.00
ORDER BY Populacao ASC;
-- DESC