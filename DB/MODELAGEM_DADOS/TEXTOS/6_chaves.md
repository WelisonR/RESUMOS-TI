# CHAVES
*   **Definição**: as chaves são usadas para **identficar de forma exclusiva** uma linha ou um conjunto de linhas.

## CHAVES ÚNICAS
*   **Chave Candidata**
    *   **Potencial chave primária**. **Caso não seja escolhida** como chave primária, será conhecida como **chave alternativa**.
    *   Exemplo: campos de Matricula e CPF do aluno.
*   **Chave Composta**
    *   Chave composta de **dois ou mais atributos**, sendo **utilizada quando não é possível identificar de forma única a tabela**.
*   **Chave Primária** (PK)
    *   **Chave principal** na relação da tabela.
    *   **Identifica de forma exclusiva** os registros em uma tabela, **não tendo repetição de valores nem valor nulo**.
    *   Não se deve ter valores duplicados na chave primária.
*   **Chave Surrogada/Substituta**
    *   **Valor numérico, único utilizado como chave primária.**
    *   Exemplo: ID (contagem).
    *   Não possui significado para o usuário, geralmente fica escondida nas aplicações.
    *   Geralmente substitui as chaves primárias compostas.

## CHAVE NÃO-ÚNICA
*   **Chave Estrangeira**
    *   **"Ponteiros lógicos"**.
    *   Estabelece um **relacionamento com a chave primária** de outra tabela.
    *   Deve corresponder a um valor de uma chave primária, caso contrário deve ser nulo.

## DOMÍNIO DE DADOS
*   Definição: defini **tipos de dados** e especifica **valores válidos** em um campo.
    *   Ex.: Nome_Cliente: máximo de 40 caracteres.

# ANEXOS
Chaves:

![Exemplo: Chaves](https://snag.gy/kI9U4G.jpg)