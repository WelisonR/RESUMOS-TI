SELECT * FROM Prefeito;
SELECT * FROM Cidade;

SELECT * FROM Cidade C INNER JOIN Prefeito P ON C.ID = P.ID_Cidade;
-- LEFT JOIN = LEFT OUTER JOIN
SELECT * FROM Cidade C LEFT OUTER JOIN Prefeito P ON C.ID = P.ID_Cidade;
-- RIGHT JOIN = RIGHT OUTER JOIN
SELECT * FROM Cidade C RIGHT JOIN Prefeito P ON C.ID = P.ID_Cidade;

-- Alguns bancos tem o FULL JOIN
-- UNION ALL traz as duplicações
SELECT * FROM Cidade C LEFT OUTER JOIN Prefeito P ON C.ID = P.ID_Cidade
UNION
SELECT * FROM Cidade C RIGHT JOIN Prefeito P ON C.ID = P.ID_Cidade;

-- Atentar ao bug no plugin do VScode em selecionar colunas com o mesmo nome
