-- Produto cartesiano
SELECT * FROM Estado AS E, Cidade AS C;

-- Area não é ambíguo
SELECT
    E.ID,
    E.Nome AS 'Estado',
    C.Nome AS 'Cidade',
    Area
FROM Estado AS E, Cidade AS C
WHERE E.ID = C.ID_Estado;

SELECT
    E.ID AS 'ID',
    E.Nome AS 'Estado',
    C.Nome AS 'Cidade',
    Regiao AS 'Região'
FROM Estado E
INNER JOIN Cidade C ON E.ID = C.ID_Estado;
