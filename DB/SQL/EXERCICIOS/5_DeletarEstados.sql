INSERT INTO Estado
    (ID, Nome, Sigla, Regiao, Populacao)
VALUES
    (1000, 'NewState', 'NS', 'Norte', 10.00),
    (1001, 'NewState2', 'N2', 'Nordeste', 15.00);

SELECT * FROM Estado;

-- Remove tuplas em que o ID é igual ou superior a 1000.
DELETE FROM Estado
WHERE ID >= 1000;

-- OBS: mesmo excluindo ambos os valores inseridos, o DB continuará a sequência (ID) a partir do 1001.