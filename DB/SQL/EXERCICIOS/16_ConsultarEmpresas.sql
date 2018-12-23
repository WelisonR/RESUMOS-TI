SELECT * FROM Empresa_Unidade;

-- Seleciona o nome da empresa e a cidade onde:
--  - O ID da empresa for igual ao ID da entidade associativa; e
--  - O ID da cidade seja igual ao ID da cidade na entidade associativa.
SELECT E.Nome AS Empresa, C.Nome AS Cidade
FROM Empresa E, Empresa_Unidade EU, Cidade C
WHERE E.ID = EU.ID_Empresa
AND C.ID = EU.ID_Cidade;

-- Atentar ao bug no plugin do VScode em selecionar colunas com o mesmo nome
