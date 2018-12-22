## ATUALIZAÇÃO DE ATRIBUTOS
*   Atualização de atributo utilizando `$set`:
    *   `db.estados.update({ Sigla: "AC" }, { $set: {Populacao: 45340000} })`.
    *   `db.estados.update({ Sigla: "AL" }, { $set: {Cidades: [{Nome: "Sergipe"}]} })`.
*   Inserção de atributo utilizando `$push`:
    *   `db.estados.update({ Sigla: "SP" }, { $push: {Cidades: {Nome: "Santos", Populacao: 433966}} })`.
