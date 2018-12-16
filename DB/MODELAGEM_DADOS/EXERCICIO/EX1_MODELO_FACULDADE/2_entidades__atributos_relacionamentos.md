# ENTIDADES
*   Identificação inicial das entidades:
    *   Aluno.
    *   Professor.
    *   Disciplina.
    *   Curso.
    *   Departamento.

# RELACIONAMENTOS
*   Aluno está matriculado em um Curso.
*   Aluno cursa disciplina.
*   Aluno realiza disciplina.
*   Disciplina pertence a curso.
*   Professor ministra disciplina.
*   Professor pertence a departamento.
*   Departamento é responsável por disciplina.
*   Departamento controla curso.
*   Disciplina depende de disciplina. (pré-requisito)

# ATRIBUTOS
*   Aluno (OK):
    *   Número de matrícula. (PK)
    *   Nome.
    *   Sobrenome.
    *   Endereço.
        *   Rua.
        *   Número.
        *   Bairro.
        *   CEP.
        *   Cidade.
        *   Estado.
    *   Código do Curso.
    *   *Telefone.
    *   CPF.
    *   Status.
    *   Filiação.
    *   Sexo.
    *   *Contato.
        *   Whatsapp.
        *   E-mail.
    *   Cod_Turma.
*   Professor (OK):
    *   Código do professor. (PK)
    *   Nome.
    *   Sobrenome.
    *   Código do departamento.
    *   Status.
*   Disciplina (OK):
    *   Código da disciplina. (PK)
    *   Nome da disciplina.
    *   Descrição curricular.
    *   Código do departamento.
    *   Número de alunos.
    *   Carga horária.
*   Curso (OK):
    *   Código do curso. (PK)
    *   Nome do curso.
    *   Código do departamento.
*   Departamento (OK):
    *   Código do curso. (PK)
    *   Nome do departamento.
    *   Código do departamento.
*   Histórico:
    *   Código do histórico. (PK)
    *   Notas.
    *   Média.
    *   Frequência.
    *   Período de realização.
    *   RA.
    *   Código da disciplina.
*   Turma:
    *   Código da turma. (PK)
    *   Período.
    *   Código do curso.
    *   Número de alunos.
    *   Data de início.
    *   Data de fim.