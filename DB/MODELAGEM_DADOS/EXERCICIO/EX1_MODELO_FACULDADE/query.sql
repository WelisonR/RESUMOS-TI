-- RA, nome e sobrenome do aluno, período e curso
SELECT A.RA, A.Nome_Aluno, A.Sobrenome_Aluno, T.Periodo, C.Nome_Curso
FROM Aluno A
INNER JOIN Curso C
ON C.Cod_Curso = A.Cod_Curso
INNER JOIN Turma T
ON A.Cod_Turma = T.Cod_Turma
ORDER BY A.Nome_Aluno;

-- Todas as disciplinas cursadas por um aluno, com respectivas notas
SELECT A.Nome_Aluno, A.Sobrenome_Aluno, D.Nome_Disciplina, DH.Nota
FROM Aluno A
INNER JOIN Aluno_Disc AD
ON A.RA = AD.RA
INNER JOIN Disciplina D
ON D.Cod_Disciplina = AD.Cod_Disciplina
INNER JOIN Historico H
ON A.RA = H.RA
INNER JOIN Disc_Hist DH
ON H.Cod_Historico = DH.Cod_Historico
WHERE A.RA = 3;

-- Nomes e sobrenomes dos professores, e disciplinas que ministram
SELECT CONCAT(P.Nome_Professor, ' ', P.Sobrenome_Professor) AS Docente,
D.Nome_Disciplina, D.Carga_Horaria
FROM Professor P
INNER JOIN Prof_Disciplina PD
ON P.Cod_Professor = PD.Cod_Professor
INNER JOIN Disciplina D
ON D.Cod_Disciplina = PD.Cod_Disciplina
ORDER BY D.Nome_Disciplina;

-- "Relatório" com informações sobre a localização/contato do aluno
SELECT CONCAT(A.Nome_Aluno, ' ', A.Sobrenome_Aluno) AS Aluno, A.CPF, T.Num_Telefone, TL.Tipo_Logradouro, E.Complemento, E.CEP
FROM Aluno A
INNER JOIN Telefones_Aluno T
ON A.RA = T.RA
INNER JOIN Endereco_Aluno E
ON A.RA = E.RA
INNER JOIN Tipo_Logradouro TL
ON TL.Cod_Tipo_Logradouro = E.Cod_Tipo_Logradouro;

-- Lista de disciplina, curso, docente e departamento
SELECT Di.Nome_Disciplina, C.Nome_Curso,
CONCAT(P.Nome_Professor, ' ', P.Sobrenome_Professor) AS Docente, De.Nome_Departamento
FROM Disciplina Di
INNER JOIN Departamento De
ON Di.Cod_Departamento = De.Cod_Departamento
INNER JOIN Prof_Disciplina PD
ON Di.Cod_Disciplina = PD.Cod_Disciplina
INNER JOIN Professor P
ON P.Cod_Professor = PD.Cod_Professor
INNER JOIN Curso_Disciplina CD
ON Di.Cod_Disciplina = CD.Cod_Disciplina
INNER JOIN Curso C
ON C.Cod_Curso = CD.Cod_Curso
ORDER BY Di.Nome_Disciplina;
