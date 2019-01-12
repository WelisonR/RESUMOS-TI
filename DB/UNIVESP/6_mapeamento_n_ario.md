# Mapeamento n-ário
*   Mapeamento de relacionamentos n-ários:
    *   Criar uma nova relação de agregação com chaves estrangeiras das chaves primárias das relações;
    *   Inclua os atributos em S;
    *   Caso haja alguma relação de cardinalidade 1, essa deve entrar na nova relação como chave estrangeira, porém não fará parte da chave primária.


# Mapeamento especializações ou generalizações
*   Múltiplas relações: superclasse e subclasse.
    *   Crie uma relação L para representar a superclasse C, e inclua em L os atributos Atrb(L) = $\{k, a1, ..., an\}$ e a chave primária PK(L) = $k$.
    *   Crie uma relação Li para cada subclasse Si, 1 <= i <= m, com os atributos Atrb(L1) = $\{k\}$ U atrb(Si) e faça PK(Li) = $k$.

# Anexos

Relacionamento n-ário:

![Relacionamento terciário](https://snag.gy/VvR0Uf.jpg)

Mapeamento n-ário:

![Mapeamento terciário](https://snag.gy/83S0XR.jpg)

Relacionamento n-ário com cardinalidade 1:

![Mapeamento n-ário](https://snag.gy/I3KB7b.jpg)

Mapeamento n-ário com cardinalidade 1:

![Mapeamento n-ário card 1](https://snag.gy/Udsyb9.jpg)

Mapeamento especializações e generalizações:

![Mapeamento especializações e generalizações](https://snag.gy/p9vxIU.jpg)
