-- Atenção ao uso do WHERE, pois caso esteja faltando, atualiza-se tudo.
UPDATE Estado
SET Nome = 'Maranhão'
WHERE Sigla = 'MA';

-- Atualiza o Estado onde o Nome é "Parana".
UPDATE Estado
SET
    Nome = "Paraná",
    Populacao = 10.32
WHERE Nome = "Parana";

SELECT EST.`Nome` FROM Estado AS EST WHERE Sigla = "MA";
SELECT Nome, Populacao FROM Estado WHERE Sigla = "PR";