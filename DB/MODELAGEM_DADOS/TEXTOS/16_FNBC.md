# FORMA NORMAL DE BOYCE-CODD
*   **A 3ª FN não lidava adequadamente com chaves candidatas compostas com atributos em comum**.
*   **Definição**: uma relação está na **FNBC se e somente se os únicos determinantes são chaves candidatas**.

## CONDIÇÕES
*   Deve-se ter a 3ª FN.
*   **Na FNBC as chaves candidatas não possuem dependências parciais por outros atributos**.
*   "Uma relação R está na FNBC sempre que uma dependência funcional não-trivial X &rightarrow; A se mantiver em R, assim X é uma superchave de R.
*   **Dependência Funcional Trivial**: será trivial caso o lado direito seja um **subconjunto** do lado esquerdo.
    *   Exemplo: {ID_Func, Nome_Func} &rightarrow; ID_Func.

## INSTRUÇÕES
*   Decompõem-se:
    *   Encontrar a dependência não trivial X &rightarrow; Y que viole a condição de FNBC. X não deve ser uma superchave.
    *   Dividir a tabela em duas:
        *   Uma com **atributos da dependência: XY**.
        *   Outra com **os atributos X com o restante da tabela original**.
## EXEMPLOS
*   Exemplo:
    *   Antes de normalizar:
        *   Forn(F#, F_Nome, P#, Qtde)
    *   Depois de normalizar:
        *   Forn(F#, F_Nome) + Forn_Prod(F#, P#, Qtde) ou Forn_Nome_Prod(F_Nome, P#, Qtde)