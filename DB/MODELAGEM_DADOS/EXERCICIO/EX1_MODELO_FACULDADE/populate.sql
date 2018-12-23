-- Carga de Dados para Testes
INSERT INTO Departamento (Nome_Departamento)
VALUES
('Ciências Humanas'),
('Matemática'),
('Biológicas'),
('Estágio');

INSERT INTO Professor (Nome_Professor, Sobrenome_Professor, Status_Professor, Cod_Departamento)
VALUES
('Fábio', 'dos Reis', 0, 2),
('Sophie', 'Allemand', 1, 1),
('Monica', 'Barroso', 1, 3);

INSERT INTO Curso (Nome_Curso, Cod_Departamento)
VALUES
('Matemática', 2),
('Psicologia', 1),
('Análise de Sistemas', 2),
('Biologia', 3),
('História', 1),
('Engenharia', 2);

INSERT INTO Turma (Cod_Curso, Periodo, Num_Alunos, Data_Inicio, Data_Fim)
VALUES
(2, 'Manhã', 20, '2016-05-12', '2017-10-15'),
(1, 'Noite', 10, '2014-05-12', '2020-03-05'),
(3, 'Tarde', 15, '2012-05-12', '2014-05-10');

INSERT INTO Disciplina (Nome_Disciplina, Cod_Departamento, Carga_Horaria, Descrição, Num_Alunos)
VALUES
('Raciocínio Lógico', 2, 1200, 'Desenvolver o raciocínio lógico', 50),
('Psicologia Cognitiva', 1, 1400, 'Entender o funcionamento do aprendizado', 30),
('Programação em C', 2, 1200, 'Aprender uma linguagem de programação', 20),
('Eletrônica Digital', 2, 300, 'Funcionamento de circuitos digitais', 30);

INSERT INTO Aluno (Nome_Aluno, Sobrenome_Aluno, CPF, Status_Aluno, Cod_Turma, Sexo, Cod_Curso, Nome_Pai, Nome_Mae, Email, Whatsapp)
VALUES
('Marcos', 'Aurelio Martins', 14278914536, 1, 2, 'M', 3, 'Marcio Aurelio', 'Maria Aparecida', 'marcosaurelio@gmail.com', 946231249),
('Gabriel', 'Fernando de Almeida', 14470954536, 1, 1, 'M', 1, 'Adão Almeida', 'Fernanda Almeida', 'gabrielalmeida@yahoo.com', 941741247),
('Beatriz', 'Sonia Meneguel', 1520984537, 1, 3, 'F', 3, 'Samuel Meneguel', 'Gabriella Meneguel', 'batrizmene@hotmail.com', 945781412),
('Jorge', 'Soares', 14223651562, 1, 3, 'M', 4, 'João Soares', 'Maria Richter', 'jorgesoares@gmail.com', 925637857),
('Ana Paula', 'Ferretti', 32968914522, 1, 3, 'F', 5, 'Marcio Ferretti', 'Ana Hoffbahn', 'anapaulaferretti@hotmail.com', 974267423),
('Mônica', 'Yamaguti', 32988914510, 1, 2, 'F', 6, 'Wilson Oliveira', 'Fernanda Yamaguti', 'monyamaguti@outlook.com', 932619560);

INSERT INTO Aluno_Disc (RA, Cod_Disciplina)
VALUES
(3, 1),
(1, 2),
(2, 3),
(4, 3),
(5, 4),
(6, 1);

INSERT INTO Curso_Disciplina(Cod_Curso, Cod_Disciplina)
VALUES
(1, 1),
(2, 2),
(3, 3),
(6, 4);

INSERT INTO Prof_Disciplina(Cod_Professor, Cod_Disciplina)
VALUES
(2, 1),
(1, 2),
(3, 3),
(2, 4);

INSERT INTO Historico (RA, Data_Inicio, Data_Final)
VALUES
(2, '2016-05-12', '2017-10-15'),
(3, '2014-05-12', '2020-03-05'),
(1, '2010-05-12', '2012-05-10');

INSERT INTO Tipo_Logradouro (Tipo_Logradouro)
VALUES
('Rua'),
('Avenida'),
('Alameda'),
('Travessa');

INSERT INTO Endereco_Aluno (RA, Cod_Tipo_Logradouro, Nome_Rua, Num_Rua, Complemento, CEP)
VALUES
(2, 1, 'das Giestas', 255, 'Casa 02', 02854000),
(3, 3, 'Lorena', 10, 'Apto 15', 02945000),
(1, 2, 'do Cursino', 1248, '', 0851040),
(4, 1, 'das Heras', 495, '', 03563142),
(5, 3, 'Santos', 1856, '', 04523963),
(6, 4, 'Matão', 206, '', 04213650);

-- Insere dados de disciplinas e notas no histórico
INSERT INTO Disc_Hist (Cod_Historico, Cod_Disciplina, Nota, Frequência)
VALUES
(1, 2, 7, 6),      -- Marcos - Psicologia Cognitiva (cod 2)
(2, 3, 8.5, 2),    -- Gabriel - Programação em C (cod 3)
(3, 1, 6.8, 8);    -- Beatriz - Raciocínio Lógico (cod 1)

-- Inserir dados de tipos de telefone e os telefones dos alunos
INSERT INTO Tipo_Telefone (Tipo_Telefone)
VALUES
('Res'),
('Com'),
('Cel'),
('Rec');

INSERT INTO Telefones_Aluno (RA, Cod_Tipo_Telefone, Num_Telefone)
VALUES
(1, 1, 12345678),
(2, 1, 87654321),
(2, 3, 99993999),
(3, 1, 11231231),
(3, 3, 12312412),
(4, 1, 12921941),
(4, 3, 91231231),
(5, 1, 76718421),
(5, 2, 65124714),
(6, 1, 98125712);