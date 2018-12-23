ALTER TABLE Empresa MODIFY CNPJ VARCHAR(14);

-- PROBLEMAS:
--  Tipo int não armazena números dessa escala
--  Tipo int ignora os zeros à esquerda.
INSERT INTO Empresa
    (Nome, CNPJ)
VALUES
    ('Bradesco', 18127300000100),
    ('Losango', 59941842000190),
    ('Fujioka', 05115147000140);

SELECT * FROM Empresa;
SELECT * FROM Cidade;

-- EX.: (1, 1, 1) - Sede (1) do bradesco (1) em Campinas (1)
INSERT INTO Empresa_Unidade
    (ID_Empresa, ID_Cidade, Sede)
VALUES
    (1, 1, 1), 
    (2, 1, 0),
    (2, 2, 1);
    