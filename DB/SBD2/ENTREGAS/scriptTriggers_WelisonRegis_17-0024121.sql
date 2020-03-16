-- ---------------     << Trigger em MySQL >>     ------------------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 06/11/2019
-- Autor(es) ..............: Welison Lucas Almeida Regis, 17/0024121
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ...: scriptTriggers
--
-- PROJETO => 1 Base de Dados
--         => 4 Tabelas
--         => 3 Triggers
--
-- -----------------------------------------------------------------

-- Começo do script físico
CREATE DATABASE IF NOT EXISTS scriptTriggers;
USE scriptTriggers;

-- Dropa as estruturas para evitar erros
DROP TABLE IF EXISTS  tbl_cliente;
DROP TABLE IF EXISTS  tbl_compra;
DROP TABLE IF EXISTS  tbl_produto;
DROP TABLE IF EXISTS  tbl_newsletter;

CREATE TABLE tbl_cliente(
 cliente_id INT AUTO_INCREMENT PRIMARY KEY,
 cliente_nome CHAR(80) NOT NULL,
 cliente_email CHAR(80) NOT NULL,
 dt_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE = INNODB AUTO_INCREMENT = 1;

CREATE TABLE tbl_compra(
 cliente_id INT NOT NULL,
 produto_id INT NOT NULL,
 dt_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE = INNODB;

CREATE TABLE tbl_produto(
 produto_id INT AUTO_INCREMENT PRIMARY KEY,
 produto_nome CHAR(80) NOT NULL
)ENGINE = INNODB AUTO_INCREMENT = 1;

CREATE TABLE tbl_newsletter(
 news_id INT AUTO_INCREMENT,
 news_email CHAR(80) NOT NULL,
 CONSTRAINT tbl_newsletter_pk PRIMARY KEY(news_id, news_email)
)ENGINE = INNODB;
-- Fim do script físico

-- Começo de definição de triggers

-- TRIGGER para conferir se o CHAR_LENGTH() de nome é maior que 4 (quatro).
DELIMITER //
CREATE TRIGGER trg_1 BEFORE INSERT ON tbl_cliente
FOR EACH ROW
BEGIN
  SET @nome = NEW.cliente_nome;
  IF ((CHAR_LENGTH(@nome) <= 4) OR (@nome = '')) THEN
    SET NEW.cliente_nome = NULL;
  END IF;
END//

-- TRIGGER para impor integridade referencial ao campos que se relcionam com outrasa tabelas
CREATE TRIGGER trg_2 BEFORE INSERT ON tbl_compra
FOR EACH ROW
BEGIN
  SELECT COUNT(cliente_id) INTO @cliente_id FROM tbl_cliente
  WHERE cliente_id = @cliente_id;
  SELECT COUNT(produto_id) INTO @produto_id FROM tbl_produto
  WHERE produto_id = @produto_id;
  IF ((@cliente_id = 0) OR (@produto_id = 0)) THEN
    SET NEW.cliente_id = NULL;
    SET NEW.produto_id = NULL;
  END IF;
END//

-- Insercao automatica de email em outra tabela
CREATE TRIGGER trg_3 AFTER INSERT ON tbl_cliente
FOR EACH ROW
BEGIN
  IF (NEW.cliente_email IS NOT NULL) THEN
    INSERT INTO tbl_newsletter SET news_email = NEW.cliente_email;
  END IF;
END//

DELIMITER ;

-- Fim de definição das triggers
