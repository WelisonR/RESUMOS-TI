# ENTIDADE
*   **Definição**: tema, **tópico** ou conceito de negócio.
*   **Representação**: **substantivos em retângulos**. Ex. de nomes: Estoque, Catálogo, etc.
*   Convenções:
    *   Começa com letra.
    *   Palavra no singular.
    *   Não tem espaço ou caracteres especiais, embora tenha algumas exceções: "$", "#", "_".
*   **Cada objeto de uma entidade é uma Instância de Entidade**.
*   A entidade pode ter existência **física ou abstrata**. Ex.: Produto, Venda, etc.
*   **Nomes** das entidades/tabelas deve ser **único**.
*   Representação de uma entidade de maneira textual: Produto(<u>Cod_Produto</u>, Nome_Produto, Preço, Qtde_Produto)

# ATRIBUTOS
*   **Definição**: **características de uma entidade**. Por exemplo, os atributos da entidade "Carro": fabricante, modelo, placa, etc.
*   Representação: **elipse (pode-se omitir) ligada à entidade**.
*   Possui um tipo de dado (domínio - coluna), nome e valor específico.

## TIPOS DE ATRIBUTOS
*   **Tipos de atributos**:
    *   **Simples**:
        *   Atômico.
        *   Ex.: CPF, CNPJ.
    *   **Composto**:
        *   **Formado por outros subatributos**.
        *   Exemplo de Endereço:
            *   Rua.
            *   CEP.
            *   Bairro.
    *   **Multivalorado**.
        *   **Mais de um valor para a mesma informação**.
        *   Exemplo: telefone.
            *   **Representação: *Telefone**. Utilizou-se também **elipses duplas**.
    *   Determinante:
        *   **Define de forma única as instâncias da entidade**.
        *   Ex.: Código de Produto.
            *   Representação: <u>Código</u>.
    *   Identificadores (**chaves**):
        *   Representa uma instância específica.
        *   Ex.: Matrícula, ID_Produto, etc.
        *   **Chaves únicas**: o valor dos dados da chave é único na entidade.
        *   **Chaves não únicas**: usadas para agrupar instâncias.
        *   **Chaves compostas**: dois ou mais atributos combinados.

# ENTIDADE ASSOCIATIVA
*   A entidade associativa é utilizada para **solucionar relações muitos-para-muitos** (N:M).
	*	Transforma a relação em 1:N ou 0:N ou 1:1 e gera-se uma tabela associativa.
	*	Exemplo: relação curso e disciplina (N:M).
		*	Vide anexo.	

# ENTIDADE x RELAÇÃO
*   **Definição de relação**: é um conjunto de registros (tuplas) representando um modelo de entidade. O conjunto das **instâncias**, com seus atributos, é denominada relação.
*   **Tabela bidimencional**.
    *   Linhas: instâncias de uma entidade. (registros)
    *   Colunas: atributos da entidade. (campos)
*   **"Toda relação é uma tabela, mas nem toda tabela é uma relação"**.
    *   Deve seguir a modelagem de dados.

# RELACIONAMENTOS
*   **Definição**: realiza a **conexão** entre uma ou mais **entidades**.
*   **Representação**: **losango** que conecta entidade(s).
*   **Grau de relacionamento** (quantidade de entidades envolvidas):
    *   **Unário**.
        *   Exemplo: **entidade - Pessoa. Relacionamento - se casa**.
    *   **Binário.**
        *   Exemplo: **entidades - Funcionário e Setor. Relacionamento - trabalha**.
    *   **Ternário.**
        *   Exemplo: **entidades - Médico, Paciente e Medicamento. Relacionamento: prescreve**.
*   **Relacionamento entre múltiplas tabelas: utilização das chaves primárias e estrangeiras.**

# ANEXOS
Entidade associativa:

![Entidade Associativa](https://snag.gy/oYsOM8.jpg)