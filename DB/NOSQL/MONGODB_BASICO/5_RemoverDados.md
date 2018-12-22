## REMOÇÃO DE DADOS
*   Exemplo de remoção com `remove`:
    *   `db.estados.remove({ Sigla: "AC" })`.

```javascript
// exclui apenas o primeiro que satisfazer a relação
db.estados.remove( {Populacao: {$exists: true}}, 1)
```
