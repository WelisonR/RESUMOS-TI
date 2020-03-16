-- --------     << Projeto Pessoal >>     ------------
-- 
--                    SCRIPT PROCEDURAL (DDL)
-- 
-- Data Criacao ...........: 03/11/2019
-- Autor(es) ..............: Welison Regis
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ....: agenda
-- 
-- PROJETO => 01 Base de Dados
--         => 04 Tabelas
--         => 03 Funcoes
--         => 01 Procedimento
-- 
-- -----------------------------------------------------------------

-- Utiliza a base 'scriptFisico_20181026' da área de compartilhamento
USE agenda;

-- Excluir funções e procedimentos inicialmente a fim de evitar erros
DROP FUNCTION IF EXISTS QuantidadePessoa;
DROP PROCEDURE IF EXISTS QuantidadeTelefone;
DROP FUNCTION IF EXISTS QuantidadeProduto;
DROP FUNCTION IF EXISTS QuantidadeFinanceira;

-- COMEÇO DOS PROCEDIMENTOS E FUNÇÕES

-- 1) Crie uma função que conta quantas tuplas tem na tabela PESSOA.
DELIMITER $$
CREATE FUNCTION QuantidadePessoa() RETURNS INT
BEGIN
	DECLARE total INT;
	SELECT COUNT(*) INTO total FROM pessoa;
    RETURN total;
END $$

-- 2) Elabore um procedimento que conte quantos telefones tem uma
--    pessoa específica.
CREATE PROCEDURE QuantidadeTelefone(IN idPessoa INT)
BEGIN
	SELECT COUNT(*) AS `Quantidade telefones`FROM telefone
		WHERE telefone.idPessoa = idPessoa;
END $$

-- 3) Crie uma função que mostre a quantidade de produtos específico
--    que será solicitado pelo nome do produto.
CREATE FUNCTION QuantidadeProduto(nome VARCHAR(80)) RETURNS INT
BEGIN
	DECLARE total INT;
	SELECT SUM(qtde) INTO total FROM produtos
		WHERE produtos.nome = nome;
    RETURN total;
END $$


-- 4) Faça uma função que calcule para um produto específico a
--    quantidade financeira em estoque que está armazenado nessa
--    base de dados (total em valor financeiro R$).
CREATE FUNCTION QuantidadeFinanceira(produto INT) RETURNS INT
BEGIN
	DECLARE total FLOAT;
	SELECT SUM(preco * qtde) INTO total FROM produtos
		WHERE idProduto = produto;
    RETURN total;
END $$
DELIMITER ;

-- FIM DOS PROCEDIMENTOS E FUNÇÕES

SELECT QuantidadePessoa() AS `Total Pessoas`;
CALL QuantidadeTelefone(2);
SELECT QuantidadeProduto('Sabonete') AS `Quantidade do item`;
SELECT QuantidadeFinanceira(3) AS `Quantidade Financeira`;