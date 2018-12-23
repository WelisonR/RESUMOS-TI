# ANOMALIAS
*   Problemas que ocorrem em bancos de dados mal planejados e não-normalizados.
*   **Causadas pelas dependências funcionais parciais/transitivas**.
*   Tipos de **anomalias de atualização**:
    *   **Inserção**.
    *   **Exclusão**.
    *   **Modificação**.

## ANOMALIA DE INCLUSÃO
*   **Não deve ser possível adicionar um dado a não ser que outro dado esteja disponível**.
*   Ex.: não se deve cadastrar um novo livro (tabela de livros) sem autor (tabela de autores) correspondente.

## ANOMALIA DE EXCLUSÃO
*   **Ocorre quando exclui-se um registro, dados referentes em outras tabelas são excluídos**.
*   Ex.: se excluirmos um autor, os livros desse autor devem ser excluídos também.

## ANOMALIA DE MODIFICAÇÃO
*   **Ao alterar dados em uma tabela, dados correspondentes em outras tabelas precisam ser alterados**.
*   Ex.: ao alterar o código de um autor, deve-se efetuar a modificação também na tabela de livros, para manter a correspondência entre ambos.


# NORMALIZAÇÃO
*   Processo de **análise de uma relação** (tabela) para assegurar que esteja bem definida, sem redundâncias ou anomalias.
*   **Decompõem relações com anomalias para produzir relações menores e bem-estruturadas**.
*   O processo de normalização proposto por Codd aplica uma série de testes para certificar que a relação satisfaça uma Forma Normal (FN).
    *   **1ª, 2ª e 3ª FNs**.
    *   Forma Normal de Boyce-Codd (**FNBC**).