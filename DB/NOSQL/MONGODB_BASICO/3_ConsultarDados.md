## CONSULTAS SIMPLES
*   Método `find`:
    *   `db.estados.find()`.
    *   `db.estados.find().pretty()`

## CONSULTAS COM AGREGAÇÃO
*   Método `aggregate`:
    *   `$project`: retorna apenas os campos desejados (1).
    *   `$group`: agrupa valores.
    *   `$unwind`: gera vários documentos, cada um com uma cidade.
    *   `$match`: retorna conjuntos que satisfazem a busca.
```javascript
db.estados.aggregate([
    { $project: {Nome: 1, "Cidades.Nome": 1, _id: 0}}
])
```

```javascript
db.estados.aggregate([
    { $project: {Populacao: {$sum: "$Cidades.Populacao"}, Sigla: 1, _id: 0} }
    { $group: {_id: null, populacaoTotal: {$sum: "$Populacao"}} },
    { $project: { _id: 0, populacaoTotal: 1 } },
])
```

```javascript
db.estados.aggregate([
    { $match: {"Cidades.Nome": "Sorocaba"} },
    { $unwind: "$Cidades" },
    { $match: {"Cidades.Nome": "Sorocaba"} },
    { $project: {_id: "$Cidades._id"} },
])
```

Exemplos de pesquisas:

```javascript
db.estados.findOne({Sigla: "RJ"})

db.estados.find({$or: [{Sigla: "RJ"}, {Sigla: "AC"}]})

db.estados.find({Populacao: {$exists: true}})

db.estados.find().skip(1).limit(2)

db.estados.count()

// Filtra para SP, mostra os campos nome, sigla e omite o id.
db.estados.find({Sigla: "SP"}, {Nome: 1, Sigla: 1, _id: 0})

db.estados.find({Sigla: "SP"}, {"Cidades.Nome": 1, _id: 0})
```
