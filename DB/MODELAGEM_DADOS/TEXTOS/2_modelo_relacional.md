# MODELO RELACIONAL
*   Criador: E. F. **Codd** (IBM).
*   **Anteriormente utilizava-se os modelos hierárquico e em rede**.

## CARACTERÍSTICAS
*   Características do modelo relacional:
    *   **Tabelas bidimensionais**.
    *   **Tabelas são também chamadas de "relações"**.
    *   Baseado em lógica e teoria de conjuntos.
    *   **Relação**: **forma de organizar** os dados em linhas e colunas.

## COMPOSIÇÃO
*   Composição do modelo relacional:
    *   Coleções de objetos ou relações que armazenam os dados.
    *   Operadores que agem nas relações, gerando outras relações.
    *   Integridade de dados (precisão e consistência).
    *   Tabelas, tuplas (linha/registro), coluna, relacionamento (associação). Outros: Índices, SP, Triggers, etc.
    *   Chave primária: coluna (atributo) que torna único um registro na tabela.
    *   Chave estrangeira: define como as tabelas se relacionam umas com as outras. FK &rightarrow; PK.
        *   Exemplo: tabela de pedidos (FK) e tabela de clientes (PK).

## MODELO ENTIDADE-RELACIONAMENTO
*   **MER**: Permite ilustrar as **entidades, atributos e os relacionamentos** em um negócio.
*   Separa a informação necessária ao projeto das atividades realizadas no negócio.
*   Elementos: entidades, atributos e relacionamentos.

## CONVENÇÕES
*   Convenções para modelar entidades, relacionamentos e atributos:
    *   **Entidades**: **Nome único, singular; em caixa alta**.
    *   **Atributos**: **nome no singular; caixa baixa; atributos obrigatórios marcados com '*'; identificador único (PK) com '#'**.
    *   **Relacionamentos**: **nome identificador** (verbo); **opcionalidade** ("deve/pode ser"); **grau ou cardinalidade** ("um e apenas um", ou "um ou mais").

## IDENTIFICADOR ÚNICO (UID)
*   UID: qualquer junção de atributos ou relacionamentos usados para **distinguir ocorrências de uma entidade**.