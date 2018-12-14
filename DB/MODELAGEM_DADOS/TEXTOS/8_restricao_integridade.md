# INTEGRIDADE DE DADOS
*   Volta-se a **manutenção e garantia** da consistência e precisão dos **dados**. Essa integridade é atingida através da aplicação de **restrições de integridade**.

## TIPOS DE RESTRIÇÕES DE INTEGRIDADE
*   Tipos de restrições de integridade:
    *   **Integridade referencial**:
        *   **Resguarda que os valores inseridos e/ou atualizados e/ou deletados em uma tabela são válidos em outra tabela.**
            *   Exemplo: produto de ID 123 foi cadastrado na tabela de vendas. Logo, o produto de ID 123 deve existir na tabela de produto.
    *   **Integridade de Domínio**:
        *   Números inseridos devem sempre **respeitar o domínio**. (valores aceitos àquela coluna)
        *   Fatores:
            *   Tipo de dado do campo.
            *   Representação interna do tipo de dado.
                *   Ex.: Preço. (float, double, int)
            *   Presença ou não do dado.
            *   Intervalos de valores no domínio.
            *   Conjuntos de valores discretos.
    *   **Integridade de Vazio**:
        *   Verifica se um campo **pode ou não ser NULL**. Sub-item de integridade de domínio.
    *   **Integridade de Chave**:
        *   Os valores de **chaves primárias devem ser sempre únicos, não podendo ser nulos**.
    *   **Integridade Definida pelo Usuário**:
        *   **Regras de negócios definidas pelo usuário do banco de dados**.
        *   Exemplo: uma coluna aceitará apenas um conjunto restrito de dados.
    *   **Integridade de coluna**:
        *   Determina os **valores aceitos a dada coluna**.