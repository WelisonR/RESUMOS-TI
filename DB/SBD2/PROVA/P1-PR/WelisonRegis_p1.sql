-- --------     << COLOCAR O NOME DE SEU PROJETO >>     ------------
--
--                    SCRIPT DE PROCURA (DML)
--
-- Data Criacao ...........: 05/12/2019
-- Autor(es) ..............: Welison Lucas Almeida Regis
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: pronatec
--
-- Data Ultima Alteracao ..: 05/12/2019
--   => Criacao de nova tabela
--
-- PROJETO => 01 Base de Dados
--   04 = Tabelas
--   01 = View
--
-- -----------------------------------------------------------------

USE pronatec;

-- Questão 01)
-- Objetivo: recuperar na base de dados as unidades e os respectivos cursos
-- ordenados pela quantidade de alunos matriculados em um dado ano.
-- Tem a visão estratégica no sentido do governo enxergar o curso que está
-- sendo mais demandado pelo mercado em um certo ano, assim dando orientação
-- na criação de novas unidades e cursos no âmbito do programa.

-- É Interessante um índice no ano, pois desempenharia a procura de forma mais
-- rápida devido ao filtro do WHERE.
CREATE INDEX ano_inicio_idx ON matriculados (ANO_INICIO_CURSO);


CREATE VIEW v_CURSO_UNIDADE AS
SELECT NOME_UNIDADE, NOME_CURSO, COUNT(NOME_CURSO) AS `QUANTIDADE MATRICULADOS`
  FROM unidades AS U
    INNER JOIN matriculados AS M
      ON U.CODIGO_UNIDADE = M.CODIGO_UNIDADE
    WHERE ANO_INICIO_CURSO=2013
  GROUP BY (M.NOME_CURSO)
  ORDER BY `QUANTIDADE MATRICULADOS` DESC;

-- Questão 02)
-- Consulta que retornará ao usuário as inforamções de todas as unidades
-- de ensino que tiveram alunos formados no programa do PRONATEC que fizeram o curso
-- a distância.

CREATE INDEX modalidade_idx ON concluintes(NOME_MODALIDADE);

SELECT U.CODIGO_UNIDADE, NOME_UNIDADE, SIGLA_UF_UNIDADE, NOME_MUNICIPIO_UNIDADE
  FROM unidades AS U
    INNER JOIN concluintes AS C
      ON U.CODIGO_UNIDADE = C.CODIGO_UNIDADE
  WHERE C.NOME_MODALIDADE = 'Ensino a Distância'
  GROUP BY (U.CODIGO_UNIDADE);

-- Questão 03) Com a mudança da criação do índice, pode-se desempenhar a query de forma mais rápida,
-- pois foi realizado um filtro por meio de um índice que trabalha sobre uma string, no caso NOME_MODALIDADE.
-- Latência final de centéssimo para casa dos miléssimos.
-- Latência: 0,03 -> 0,0025.
