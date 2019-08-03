# Linguagem de consulta - Álgebra Relacional
*   Linguagem de consulta: meio pelo qual um usuário pode requisitar informações.
*   O SQL veio de linguagens de consulta formal, como a Álgebra Relacional.

## Álgebra Relacional
*   Na Algebra 
*   Suponha o seguinte modelo relacional EMPRESA:
    *   FUNCIONARIO(**ident**, nome, sobrenome, endereco, dt_nasc, salario, sexo, supident, dnumero)
    *   DEPENDENTE(**fident**, **nome**, dt_nasc, sexo, relacionamento)
    *   DEPARTAMENTO(**numero**, nome, gident, dtinicio)
    *   LOCALIZACOES(**dnumero**, **localizacao**)
    *   PROJETO(**numero**, nome, localizacao, dnumero)
    *   TRABALHA_EM(**pnumero**, **fident**, horas)
*   A operação `SELECT`: retorna tuplas de acordo com um certo critério. Partição horizontal.
    *   $σ_{<condição ~ de ~ seleção>} (R)$
    *   Exemplos:
        *   $σ_{dnumero=4 OR salario>3000} (FUNCIONARIO)$
        *   $σ_{dnumero=3 AND salario<= 300} (FUNCIONARIO)$
*   A operação `PROJECT`: permite escolher os atributos a serem projetados. Partição vertical. Reduz redundâncias.
    *   $π_{<lista ~ de ~ atributos>} (R)$
    *   Exemplos:
        *   $π_{nome, sobrenome, salario} (FUNCIONARIO)
        *   $π_{nome, sobrenome, salario} (σ_{dnumero = 4} (FUNCIONARIO))$
*   O operador de `atribuição`: permite armazenar um comando de Álgebra Relacional em uma "variável".
    *   Exemplos:
        *   DEP4_FUNCIONARIOS &larr; $σ_{dnumero=4}$ (FUNCIONARIO)
        *   RESULTADO &larr; $π_{nome, sobrenome, salario}$ (DEP4_FUNCIONARIOS)
*   O operador `RENAME`: altera o nome dos atributos e da tabela.
    *   Exemplo:
        *   DEP4_FUNCIONARIOS &larr; $σ_{dnumero=4}$ (FUNCIONARIO)
        *   RESULTADO &larr; $π_{nome, sobrenome, salario}$ (DEP4_FUNCIONARIOS)
        *   ρ_{RESULT(name, surname, salary)} (RESULTADO)
*   As operações `UNION`, `INTERSECTION`, `SET DIFFERENCE`:
    *   As relações as quais utilizarem essas operações devem ter a mesma quantidade de atributos por motivos de compatibilidade de operação.
    *   `UNION`: $ R ∪ S $ equivale aos elementos de R com os elementos de S, excluindo-se as duplicações.
    *   `INTERSECTION`: $ R ∩ S $ equivale aos elementos que pertencem a R e também a S.
    *   `SET DIFFERENCE`: $ R - S $ equivale a todas as tuplas de R que não pertencem a S.
    *   Exemplo: recupere o identificador de todos os funcionários que ou trabalham no departamento 4 ou supervisionam diretamente um funcionário que trabalha no departamento 4.
        *   DEP4_FUNCIONARIO &larr; $σ_{dnumero=4}$ (FUNCIONARIO)
        *   RESULTADO1 &larr; $π_{ident}$ (DEP4_FUNCIONARIOS)
        *   RESULTADO2 &larr; $π_{supident}$ (DEP4_FUNCIONARIOS)
        *   RESULTADO &larr; RESULTADO1 ∪ RESULTADO2
*   O operador `CARTESIAN PRODUCT`: produz um elemento elemento combinando cada elemento de uma relação com todos os elementos da outra relação.
    *   Exemplo: Recupere uma lista de nomes de cada funcionária (do sexo feminino) e de seus dependentes.
        *   FUNCIONARIAS &larr; $σ_{sex = "F"}$ (FUNCIONARIO)
        *   FN &larr; $π_{ident, nome, sobrenome}$ (FUNCIONARIAS)
        *   FD &larr; FN X DEPENDENTE
        *   DEFATO_DEP &larr; $σ_{ident = fident}$ (FD)
        *   RESULTADO &larr; $π_{FN.nome, FN.sobrenome, DEPENDENTE.nome}$ (DEFATO_DEP)
*   O operador `JOIN`: une tuplas de duas relações R e S que possuem uma relação.
    *   R $⋈_{condição ~ de ~ junção}$ S.
