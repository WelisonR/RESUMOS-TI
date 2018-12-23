# DICIONÁRIO DE DADOS / REPOSITÓRIO DE METADADOS
*   **Definição**: utiliza-se um dicionário de dados para **armazenar a estrutura, assim como os relacionamentos, no banco de dados**.

# EXEMPLO COM TABELAS
*   Supõnha o seguinte DER:

![DER Simplificado](https://snag.gy/9sNFRi.jpg)

*   Tabelas e relacionamentos:

| Tabela      | Relacionamento | Nome do Relacionamento | Descrição                                   |
|-------------|----------------|------------------------|---------------------------------------------|
| tbl_Livro   | tbl_Autor      | Escreve                | Tabela para cadastro dos livros da coleção  |
| tbl_Livro   | tbl_Editora    | Publica                | Tabela para cadastro dos livros da coleção  |
| tbl_Autor   | tbl_Livro      | Escreve                | Tabela para cadastro dos autores dos livros |
| tbl_Editora | tbl_Livro      | Publica                | Cadastro de editoras                        |

*   Especificação das tabelas com os atributos:

| Tabela    | Nome da Coluna | Tipo de Dados | Comprimento | Restrições   | Valor Padrão | Descrição                                               |
|-----------|----------------|---------------|-------------|--------------|--------------|---------------------------------------------------------|
| tbl_Livro | ID_Livro       | Inteiro       | 4 bytes     | PK, NOT NULL | N/D          | Número de identificação do livro gerado automaticamente |
|           | Nome_Livro     | Caracteres    | 40 bytes    | NOT NULL     | N/D          | Título do Livro                                         |
|           | ID_Autor       | Inteiro       | 4 bytes     | FK           | N/D          | Nº de identificação do autor                            |
|           | ID_Editora     | Inteiro       | 4 bytes     | FK           | N/D          | Nº de identificação da editora                          |
|           | Data_Pub       | Data          | 8 bytes     |              | N/D          | Data de publicação da obra                              |

Total: 60 bytes.

---

| Tabela    | Nome da Coluna  | Tipo de Dados | Comprimento | Restrições   | Valor Padrão | Descrição                                                |
|-----------|-----------------|---------------|-------------|--------------|--------------|----------------------------------------------------------|
| tbl_Autor | ID_Autor        | Inteiro       | 4 bytes     | PK, NOT NULL | N/D          | Número de identificação do autor, gerado automaticamente |
|           | Nome_Autor      | Caracteres    | 40 bytes    | NOT NULL     | N/D          | Nome do autor                                            |
|           | Sobrenome_Autor | Caracteres    | 40 bytes    | NOT NULL     | N/D          | Sobrenome do autor                                       |

Total: 84 bytes.

---

| Tabela    | Nome da Coluna | Tipo de Dados | Comprimento | Restrições   | Valor Padrão | Descrição                                                  |
|-----------|----------------|---------------|-------------|--------------|--------------|------------------------------------------------------------|
| tbl_Autor | ID_Editora     | Inteiro       | 4 bytes     | PK, NOT NULL | N/D          | Número de identificação da editora, gerado automaticamente |
|           | Nome_Editora   | Caracteres    | 40 bytes    | NOT NULL     | N/D          | Nome da Editora                                            |

Total: 44 bytes.

*   Representação dos relacionamentos:

| Relacionamento | Tabela 1 - FK | Tabela 2 - PK | Descrição                                                 |
|----------------|---------------|---------------|-----------------------------------------------------------|
| "Escreve"      | tbl_Livro     | tbl_Autor     | Relacionamento que descreve qual autor escreve cada livro |
| "Publica"      | tbl_Livro     | tbl_Editora   | Relacionamento que mostra qual editora publica qual livro |
