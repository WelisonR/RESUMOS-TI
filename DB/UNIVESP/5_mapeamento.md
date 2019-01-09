# Mapeamento MER -> Conceitual
*   Definição: mapeamento é a maneira de projetar o esquema do banco de dados (projeto lógico) tendo como base o modelo conceitual.
*   No projeto lógico já se discute o SGBD.

## Mapeamento das entidades
*   Entidade forte: um atributo chave da entidade é escolhido para ser chave primária.
*   Entidade fraca: cria-se uma nova relação e toma-se uma chave primária composta formada pela chave estrangeira da entidade forte associada e a chave parcial da entidade fraca.
    *   Exemplo: entidade dependente.
*   Atributos multivalorados: cria-se uma nova relação e toma-se uma chave primária composta formada por uma chave estrangeira relativo a outra relação e um atributo da nova relação.
    *   Exemplo: entidade DEPTO_LOCALIZAÇÕES.

# Abordagem da chave estrangeira
*   Em um relacionamento entre duas entidades, deve-se escolher a entidade S aquela que possui participação total no relacionamento. Inclua todos os atributos simples, e os componentes simples dos atributos compostos, do tipo relacionamento como atributos de S.
*   Mapeamento M:N:
    *   Para relacionamentos M:N, cria uma nova relação para representar o relacionamento.
    *   Inclua como chave estrangeira as chaves primárias das relações que representam as entidades participantes do relacionamento.
    *   A chave primária da nova relação é a combinação das chaves estrangeiras.
    *   Inclua também os atributos simples, ou componentes simples de atributos compostos, como atributos na nova relação.
# Anexos

Mapeamento:
![Mapeamento](https://snag.gy/MPItOg.jpg)


Modelo relacional completo:
![Chave estrangeira](https://snag.gy/wpR63l.jpg)