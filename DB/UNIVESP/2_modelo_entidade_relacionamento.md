# Modelagem de dados

## Modelo Entidade-Relacionamento
*   Definição: modelo conceitual de alto nível que expressa a organização de dados em um banco de dados.
*   O MER é representado em diagramas através do Diagrama Entidadade-Relacionamento.
*   Elementos do diagrama ER:
    *   Entidades: representa algo do mundo real, física ou conceitual. Ex.: um departamento.
        *   Entidade forte: existência independente.
        *   Entidade fraca: se a existência de uma entidade está relacionada a outra entidade. Ex.: entidade "dependente" em relação a "empregados".
        *   Representação: retângulos, sendo retângulos com borda dupla entidades fracas. Losangos do relacionamento entre entidade forte e fraca deve ser dupla.
    *   Atributos: propriedade que descreve uma entidade. Ex.: propriedades de um funcionário - número (ID), nome, endereço, salário, data de nascimento.
        *   Representação: elipses. Elipses com borda dupla: atributo multivalorado. Elipse pontilhada: atributo derivado.
        *   Tipos de atributos:
            *   Simples x Compostos. Ex. de atributo simples: identidade. Ex. de atributo composto: nome.
            *   Univalorados x Multivalorados: atributo multivalorado é aquele que comporta várias versões de uma mesma informação. Ex.: localizações de dado departamento.
            *   Armazenados x Derivados: atributo derivado é aquele que é calculado a partir de outros dados. Ex.: número do empregado.
    *   Chaves: valor unitário ou conjunto de valores que permite identificar unicamente uma entidade (restrição de unicidade) de dado tipo entidade.
        *   Uma entidade fraca possui uma chave parcial, pois sozinho não identifica a entidade no contexto total.
        *   Representação: sublinha-se, sendo tracejado caso chave parcial.
    *   Relacionamentos: associações entre entidades. Ex.: funcionário gerencia um departamento.
        *   Representação: losangos.
        *   Grau: binário, ternário, n-ário.
            *   
            *   Ex.: FORNECEDOR fornece PEÇAS para um PROJETO. (grau 3)
        *   Relacionamento recursivo: mesmo tipo entidade participa mais de uma vez do tipo relacionamento, assumindo papéis diferentes. Ex.: supervisor e supervisionado.
        *   Restrição de participação: se a relação em um tipo de relacionamento é obrigatória é dita TOTAL, senão PARCIAL.
            *   Partipação total: linha dupla. (DEPARTAMENTO é gerenciado FUNCIONÁRIO)
            *   Participação simples: linha simples. (FUNCIONÁRIO gerencia DEPARTAMENTO)
        *   Relacionamento pode ter atributo, é dito propriedade do relacionamento.
            *   Ex.: Um funcionário gerencia um departamento, porém, essa gerencia tem uma data de início. Então, data de início é dito propriedade do relacionamento.
    *   Cardinalidades: indica o número de instâncias de relacionamento nas quais uma instância de entidade pode participar.
        *   Cardinalidades, representação junto aos losangos e leitura cruzada:
            *   1:1.
            *   1:N, N:1. (FUNCIONÁRIO supersiona FUNCIONÁRIO)
            *   M:N. (FUNCIONÁRIO trabalha em PROJETO)
        *   Representação de cardinalidade MIN-MAX: (x, x).

# Anexos

Relacionamento ternário:

![Relacionamento ternário](https://snag.gy/P0gMIG.jpg)