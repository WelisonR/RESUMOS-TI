-- SELECT * FROM Estado;
-- SELECT * FROM Cidade;
-- SELECT * FROM Prefeito;
-- SELECT * FROM Empresa;

-- OPERADOR LIKE e Coringas '%' e '_'.
SELECT * FROM Estado WHERE Nome LIKE 'Acre';
SELECT * FROM Estado WHERE Nome LIKE 'A%';
SELECT * FROM Estado WHERE Nome LIKE '%A';
SELECT * FROM Estado WHERE Nome LIKE '%Mato%';

-- % pode ser 0 ou muitos.

SELECT * FROM Prefeito WHERE Nome LIKE '_odrigo Neves';
SELECT * FROM Prefeito WHERE Nome LIKE 'Raq__l Lyra';
SELECT * FROM Prefeito WHERE Nome LIKE '_a%';

-- Operador IN
SELECT 
    Sigla,
    Regiao,
    SUM(Populacao) AS Total
FROM Estado WHERE Regiao IN ('Norte', 'Nordeste')
GROUP BY Regiao
ORDER BY Total DESC;

-- Operador BETWEEN
SELECT
    Nome,
    Sigla,
    Regiao,
    Populacao
FROM Estado WHERE Populacao BETWEEN 5.00 AND 15.00;