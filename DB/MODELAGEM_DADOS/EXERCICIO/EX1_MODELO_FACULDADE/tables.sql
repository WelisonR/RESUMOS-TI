-- Criar Banco
CREATE DATABASE db_FaculdadeEX;
USE db_FaculdadeEX;

-- Criar Tabelas
CREATE TABLE Departamento (
    Cod_Departamento INT PRIMARY KEY AUTO_INCREMENT,
    Nome_departamento VARCHAR(20) NOT NULL
);

CREATE TABLE Professor (
    Cod_Professor INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Professor VARCHAR(20) NOT NULL,
    Sobrenome_Professor VARCHAR(50) NOT NULL,
    Status_Professor TINYINT,
    Cod_Departamento INT,
    CONSTRAINT fk_Codigo_departamento FOREIGN KEY(Cod_Departamento) REFERENCES Departamento (Cod_Departamento)
);

CREATE TABLE Curso (
    Cod_Curso INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Curso VARCHAR(30),
    Cod_Departamento INT,
    CONSTRAINT fk_Cod_Departamento FOREIGN KEY (Cod_Departamento) REFERENCES Departamento (Cod_Departamento)
);

CREATE TABLE Turma (
    Cod_Turma INT PRIMARY KEY AUTO_INCREMENT,
    Cod_Curso INT,
    Periodo VARCHAR(8),
    Num_Alunos INT,
    Data_Inicio DATE,
    Data_Fim DATE,
    CONSTRAINT fk_Cod_Curso FOREIGN KEY (Cod_Curso) REFERENCES Curso (Cod_Curso)
);

CREATE TABLE Disciplina (
    Cod_Disciplina INT PRIMARY KEY AUTO_INCREMENT,
    Cod_Disciplina_Depende INT NULL, /* Auto-relacionamento */
    Nome_Disciplina VARCHAR(30),
    Cod_Departamento INT NOT NULL,
    Carga_Horaria INT NOT NULL,
    Descrição VARCHAR(80),
    Num_Alunos INT NOT NULL,
    CONSTRAINT fk_Cod_Departamento_Disciplina FOREIGN KEY (Cod_Departamento) REFERENCES Departamento (Cod_Departamento),
    CONSTRAINT fk_Cod_Disciplina FOREIGN KEY (Cod_Disciplina_Depende) REFERENCES Disciplina (Cod_Disciplina)
);

CREATE TABLE Prof_Disciplina (
    Cod_Professor INT NOT NULL,
    Cod_Disciplina INT NOT NULL,
    PRIMARY KEY (Cod_Professor, Cod_Disciplina), 
    CONSTRAINT fk_Cod_Professor_Prof FOREIGN KEY (Cod_Professor) REFERENCES Professor (Cod_Professor),
    CONSTRAINT fk_Cod_Disciplina_Prof FOREIGN KEY (Cod_Disciplina) REFERENCES Disciplina (Cod_Disciplina)
);

CREATE TABLE Curso_Disciplina (
    Cod_Curso INT NOT NULL,
    Cod_Disciplina INT NOT NULL,
    PRIMARY KEY (Cod_Curso, Cod_Disciplina), 
    CONSTRAINT fk_Cod_Curso_Disci FOREIGN KEY (Cod_Curso) REFERENCES Curso (Cod_Curso),
    CONSTRAINT fk_Cod_Disciplina_Disci FOREIGN KEY (Cod_Disciplina) REFERENCES Disciplina (Cod_Disciplina)
);

CREATE TABLE Aluno (
    RA INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Aluno VARCHAR(20) NOT NULL,
    Sobrenome_Aluno VARCHAR(20) NOT NULL,
    CPF VARCHAR(11) NOT NULL,
    Status_Aluno TINYINT(1) NOT NULL,
    Cod_Turma INT,
    Sexo VARCHAR(1),
    Cod_Curso INT,
    Nome_Pai VARCHAR(50) NOT NULL,
    Nome_Mae VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Whatsapp VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Cod_Turma_Aluno FOREIGN KEY(Cod_Turma) REFERENCES Turma (Cod_Turma),
    CONSTRAINT fk_Cod_Curso_Aluno FOREIGN KEY(Cod_Curso) REFERENCES Curso (Cod_Curso)
);

CREATE TABLE Aluno_Disc (
    RA INT NOT NULL,
    Cod_Disciplina INT NOT NULL,
    PRIMARY KEY (RA, Cod_Disciplina),
    CONSTRAINT fk_RA_Aluno FOREIGN KEY (RA) REFERENCES Aluno (RA),
    CONSTRAINT fk_Cod_Disciplina_Aluno FOREIGN KEY (Cod_Disciplina) REFERENCES Disciplina (Cod_Disciplina)
);

CREATE TABLE Historico (
    Cod_Historico INT PRIMARY KEY AUTO_INCREMENT,
    RA INT NOT NULL,
    Data_Inicio DATE NOT NULL,
    Data_Final DATE,
    CONSTRAINT fk_Cod_RA FOREIGN KEY (RA) REFERENCES Aluno (RA)
);

CREATE TABLE Disc_Hist (
    Cod_Historico INT NOT NULL,
    Cod_Disciplina INT NOT NULL,
    Nota FLOAT(4, 2),
    Frequência INT,
    PRIMARY KEY (Cod_Historico, Cod_Disciplina), 
    CONSTRAINT fk_Cod_Historico FOREIGN KEY (Cod_Historico) REFERENCES Historico (Cod_Historico),
    CONSTRAINT fk_Cod_Disciplina_Hist FOREIGN KEY (Cod_Disciplina) REFERENCES Disciplina (Cod_Disciplina)
);

CREATE TABLE Tipo_Telefone(
    Cod_Tipo_Telefone INT PRIMARY KEY AUTO_INCREMENT,
    Tipo_Telefone VARCHAR(8)
);

CREATE TABLE Telefones_Aluno (
    Cod_Telefones_Aluno INT PRIMARY KEY AUTO_INCREMENT,
    RA INT NOT NULL,
    Cod_Tipo_Telefone INT NOT NULL,
    Num_Telefone VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Cod_RA_Tel FOREIGN KEY (RA) REFERENCES Aluno (RA),
    CONSTRAINT fk_Cod_Tipo_Telefone FOREIGN KEY (Cod_Tipo_Telefone) REFERENCES Tipo_Telefone (Cod_Tipo_Telefone)
);

CREATE TABLE Tipo_Logradouro (
    Cod_Tipo_Logradouro INT PRIMARY KEY AUTO_INCREMENT,
    Tipo_Logradouro VARCHAR(11)
);

CREATE TABLE Endereco_Aluno (
    Cod_Endereco_Aluno INT PRIMARY KEY AUTO_INCREMENT,
    RA INT NOT NULL,
    Cod_Tipo_Logradouro INT NOT NULL,
    Nome_Rua VARCHAR(50) NOT NULL,
    Num_Rua INT NOT NULL,
    Complemento VARCHAR(20) NULL,
    CEP VARCHAR(8) NOT NULL,
    CONSTRAINT fk_Cod_RA_End FOREIGN KEY(RA) REFERENCES Aluno (RA),
    CONSTRAINT fk_Cod_Tipo_Lougradouro FOREIGN KEY(Cod_Tipo_Logradouro) REFERENCES Tipo_Logradouro (Cod_Tipo_Logradouro)
);