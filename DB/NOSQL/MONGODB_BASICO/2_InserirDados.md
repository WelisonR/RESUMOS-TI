## INSERÇÃO DE DADOS
*   Inserção utilizando `insert` (apenas inserção):
    *   `db.estados.insert({Nome: "Acre", Sigla: "AC", Regiao: "Norte"})`.
```javascript
db.estados.insert({
    Nome: "Rio de Janeiro",
    Sigla: "RJ",
    Regiao: "Sudeste",
    Cidades: [{
        _id: ObjectId(),
        Nome: "Niterói",
        Area: 133.9,
        Populacao: 387562
    }]
})
```

```javascript
db.estados.insert({
    Nome: "Rio de Janeiro",
    Sigla: "RJ",
    Regiao: "Sudeste",
    Cidades: [{
        _id: ObjectId(),
        Nome: "Niterói",
        Area: 133.9,
        Populacao: 387562
    }]
})
```

```javascript
db.estados.insert({
    Nome: "São Paulo",
    Sigla: "SP",
    Regiao: "Sudeste",
    Cidades: [
        {
        Nome: "Campinas",
        Area: 795.7,
        Prefeito: "Jonas Donizette",
        Populacao: 1081000,
        _id: ObjectId()
        },
        {
        Nome: "Guarulhos",
        Populacao: 1325000,
        _id: ObjectId()
        },
        {
        Nome: "Sorocaba",
        distanciaCapital: 87,
        Populacao: 644919,
        _id: ObjectId()
        }
    ]
})
```

```javascript
// Criar relacionamento
db.empresas.insert({ Nome: "Bradesco", EstadoId: ObjectId("5c1e542c8548d87e7cab31c1") })

db.empresas.insert({ Nome: "Vale", CidadeId: ObjectId("5c1e54388548d87e7cab31c4") })
```

*   Inserção utilizando `save` (insere ou atualiza um documento):
    *   `db.estados.save({Nome: "Alagoas", Sigla: "AL", Regiao: "Nordeste", Populacao: 1001132})`.

##   DIFERENÇA DE INSERT E SAVE
*   Para o `save`, se fornecer um `_id` este será atualizado; caso contrário, será apenas uma inserção. O `insert` irá lançar um erro de chave duplicada.
