-- Não irá criar uma tabela caso já exista
CREATE TABLE IF NOT EXISTS Cidade (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    ID_Estado INT UNSIGNED NOT NULL,
    Area DECIMAL(10, 2),
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_Estado) REFERENCES Estado (ID)
);
