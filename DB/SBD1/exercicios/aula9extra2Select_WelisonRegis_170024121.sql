-- --------     << Clinica >>     ------------
-- 
--                    SCRIPT DE SELECAO (DML)
-- 
-- Data Criacao ...........: 22/05/2019
-- Autor(es) ..............: Welison Lucas Almeida Regis
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer5evol4
-- 
-- Data Ultima Alteracao ..: 22/05/2019
--   => Adiciona script de selecao de conteudos
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 
-- -----------------------------------------------------------------

USE aula4exer5evol4;

-- 1) Mostrar todos os medicamentos de uma receita.
SELECT C.idReceita, M.nomeMedicamento
FROM MEDICAMENTO AS M
INNER JOIN contem AS C
ON M.codMedicamento = C.codMedicamento
WHERE  C.idReceita = 2;

-- 2) Listar todas as especialidades e indicar quais médicos estão em cada uma,
-- além das especialidades que estão sem médico.
SELECT E.nomeEspecialidade, M.nome
FROM ESPECIALIDADE AS E
LEFT JOIN possui AS P
	INNER JOIN MEDICO AS M
	ON M.crm = P.crm
ON E.idEspecialidade = P.idEspecialidade;


-- 3) Mostrar os médicos e os pacientes que foram atendidos em um dia específico. 
SELECT M.crm, M.nome, P.nome, P.cpf, C.data
FROM MEDICO AS M
INNER JOIN CONSULTA AS C
ON M.crm = C.crm
INNER JOIN PACIENTE AS P
ON C.cpf = P.cpf
WHERE C.data = '2019-04-20';

-- 4) Apresentar quantos pacientes cada médico atendeu.
SELECT M.crm, M.nome, COUNT(DISTINCT C.cpf) AS pacientesAtendidos
FROM MEDICO AS M
LEFT JOIN CONSULTA AS C
ON M.crm = C.crm
GROUP BY crm;

-- 5) Mostrar todos os dados de pacientes consultado por parte do nome.
SELECT *
FROM PACIENTE
WHERE nome LIKE "%Ana%";
