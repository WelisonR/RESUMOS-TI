# DEPENDÊNCIAS

## DEPENDÊNCIA FUNCIONAL
*   **Definição**: dependencia funcional é quando um atributo X identifica um atributo Y ou quando um atributo Y é dependente de um atributo X.
*   Exemplo: **Numero_Pedido &rightarrow; Prazo_Entrega_Pedido**.
    *   O Prazo de entrega é funcionamente dependente ao número do pedido.
    *   **Atributo determinante**: Número pedido.
    *   **Atributo dependente**: Prazo_Entrega_Pedido.

### TIPOS DE DEPENDÊNCIAS FUNCIONAIS
*   **Dependência funcional total**:
    *   Tendo uma PK composta, tem-se uma dependência funcional total caso um **atributo não-chave dependa dessa PK como um todo**, e não somente de parte dela.
    *   Exemplo:
        *   | Item-Pedido   |
            |---------------|
            | Num_Pedido    |
            | Cod_produto   |
            | Quant_Produto |
        *   Quant_Produto depende tanto do Num_Pedido (PK) quanto de Cod_Produto (PK).
*   **Dependência funcional parcial**:
    *   Tendo uma PK composta, há dependência funcional parcial caso um **atributo não-chave não dependa funcionamente de toda a PK**.
    *   Exemplo:
        *   | Matrículas      |
            |-----------------|
            | ID_Aluno        |
            | Cod_Disciplina  |
            | Nome_Disciplina |
            | Data_Inicio     |
        *   ID_Aluno (PK) e Cod_Disciplina (PK). Nome da disciplina depente do código da disciplina, mas não do ID do aluno.
*   **Dependência Funcional Transitiva**:
    *   Ocorre quando um **campo depende de outro campo não-chave**.
    *   Exemplo:
        *   | Pedidos           |
            |-------------------|
            | Num_Pedido        |
            | Prazo_Entrega     |
            | Cod_Vendedor      |
            | Nome_Vendedor     |
        *   Num_Pedido (PK) e Cod_Vendedor(FK). No exemplo, Nome_Vendedor depende funcionamente do Cod_Vendedor.
*   **Dependência Multivalorada**:
    *   Ocorre quando há um **conjunto de valores são dependentes a um certo atributo**. Denota-se **A ->> B**, sendo B a coluna que depende de A.
    *   Exemplo:
        *   | Modelo | Ano  | Cor      |
            |--------|------|----------|
            | Gol    | 2016 | Prata    |
            | Uno    | 2016 | Preto    |
            | Uno    | 2015 | Prata    |
            | Fox    | 2016 | Vermelho |
            | Fox    | 2014 | Branco   |
        *   Embora sejam independentes, ano e cor dependem diretamente do Modelo. Logo, são dependentes multivalorados do Modelo.