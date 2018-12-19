-- Criando a tabela Estado
-- População por milhão
CREATE TABLE Estado (
    ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) UNIQUE NOT NULL,
    Sigla VARCHAR(2) UNIQUE NOT NULL,
    Regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'SUL') NOT NULL,
    Populacao DECIMAL(5, 2) NOT NULL
    -- PRIMARY KEY (ID),
    -- UNIQUE KEY (Nome),
);