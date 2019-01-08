# Mapeamento MER -> Conceitual
*   Definição: mapeamento é a maneira de projetar o esquema do banco de dados (projeto lógico) tendo como base o modelo conceitual.
*   No projeto lógico já se discute o SGBD.

## Mapeamento das entidades
*   Entidade forte: um atributo chave da entidade é escolhido para ser chave primária.
*   Entidade fraca: cria-se uma nova relação e toma-se uma chave primária composta formada pela chave estrangeira da entidade forte associada e a chave parcial da entidade fraca.
    *   Exemplo: entidade dependente.
*   Atributos multivalorados: cria-se uma nova relação e toma-se uma chave primária composta formada por uma chave estrangeira relativo a outra relação e um atributo da nova relação.
    *   Exemplo: entidade DEPTO_LOCALIZAÇÕES.

# Anexos

Mapeamento:
![Mapeamento](https://snag.gy/MPItOg.jpg)