## UTILIZAÇÃO DE LOOKUP
*   Realiza o relacionamento entre conteúdos através de "chaves".
*   Exemplos:

```javascript
db.empresas.aggregate([
    {$match: {Nome: "Bradesco"}},
    {$lookup: {
        from: "estados",
        localField: "estadoId",
        foreignField: "_id",
        as: "Estado"
    }},
    {$unwind: "$Estado"},
])
```

```javascript
db.empresas.aggregate([
    {$match: { Nome: "Vale" }},
    {$lookup: {
        from: "estados",
        localField: "cidadeId",
        foreignField: "Cidades._id",
        as: "Estado"
    }},
    {$unwind: "$Estado"},
    {$unwind: "$Estado.Cidades"},
    {$addFields: { mesmaCidade: {$cmp: ["$Estado.Cidades._id", "$cidadeId"]} }}
    {$match: { mesmaCidade: 0 }},
])
```
