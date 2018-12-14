# CARDINALIDADE
*   **Definição**: representa o **número de itens que se relacionam com as entidades**.
*   **Cardinalidade máxima**: número máximo de instâncias de entidade que participam do relacionamento. (1 ou N (muitos))
*   **Cardinalidade mínima**: número mínimo que deve participar obrigatoriamente em um relacionamento. **Zero é participação opcional e um é obrigatória**.
*   Exemplo:
    *   Um cliente pode solicitar 1 ou N encomandas, enquanto uma encomenda é solicitada por 1 cliente.
    *   Vide anexo.
*   **Cardinalidade estendida**: (1, 1), mínima: (1); estendida: (1, N), mínima: N.
*   **Relacionamentos**:
    *   **Binário um-para-um**:
        *   Exemplo: entidades - Professor e Armário. Relacionamento: Usa.
    *   **Binário um-para-muitos**:
        *   Exemplo: entidades - Funcionário e Departamento. Relacionamento: Trabalha.
    *   **Binário muitos-para-muitos (N:M)**:
        *   Exemplo: **entidades - Cliente e Pacote. Relacionamento: adquire.**
        *   Deve-se desmembrar por conta da difícil implementação. Vide anexos.

# ANEXOS
Representação de cardinalidade:

![Representação de cardinalidade 1](https://snag.gy/7JRLQP.jpg)

Outra representação de cardinalidade:

![Representação de cardinalidade 2](https://snag.gy/hfAxP4.jpg)

Cliente x Encomenda:

![Cliente x Encomenda](https://snag.gy/8AJjO4.jpg)

![Cliente x Encomenda](https://snag.gy/qJZSxy.jpg)

Desmembramento da relação muitos-para-muitos:

![Muitos-para-muitos](https://snag.gy/FJzU8N.jpg)