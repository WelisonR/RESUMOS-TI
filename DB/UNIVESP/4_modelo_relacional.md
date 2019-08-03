# Modelo Relacional
*   Definição: modelo que apresenta um banco de dados como uma coleção de relações. Relação é a representação da tabela propriamente dita.
*   Termos:
    *   Relação: tabela.
    *   Tupla: linha.
    *   Atributo: coluna.
    *   Domínio: tipo de dado.
*   Esquema de relação:
    *   Representação: $R(A_1, A_2, A_3, A_4...)$, sendo "R" a relação e "A$_i$" os atributos.
    *   Exemplo: FUNCIONÁRIO(ident: longint; nome: string; endereço: string; salário: real; dt_nasc: date)
        *   FUNCIONÁRIO tem grau 5.
    *   Uma relação r, definida em R, é um conjunto de m-tuplas $r = {t_1, t_2, ..., t_m}$, sendo cama tupla uma lista ordenada de de n valores $t = <v_1, v_2, ..., t_n>$. Representação do iésimo termo: t[$A_i$] ou t.$A_i$.
*   Características:
    *   Valores atômicos em tuplas.
*   Restrições:
    *   Restrição de domínio: deve-se respeitar um domínio dom(A) nos valores das tuplas.
    *   Restrição de chaves: duas tuplas quaisquer não podem ter as mesma combinação de valores para todos os seus atributos.
*   Restrições de integridade:
    *   Entidade: chave primária não pode ser NULL.
    *   Referencial: dada tupla A deve indicar uma tupla existente em outra tupla B.
*   Chaves:
    *   Superchaves: qualquer conjunto de atributos, tais que caracterizem unicamente as tuplas.
    *   Chave: conjunto mínimo de atributos capazes de identificar as tuplas.
    *   Chave primária: chave(s) mínima(s) escolhida(s).
    *   Chave estrangeira: chave que referencia uma chave primária em outra relação. $t_1[FK] = t_2[PK]$
    *   Chave candidata: todas as chaves mínimas da relação.

# Anexo

Relação funcionário:

![Relação funcionário](https://snag.gy/47xeUk.jpg)
