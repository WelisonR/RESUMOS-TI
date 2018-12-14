# NÍVEIS DE MODELAGEM

## CLASSIFICAÇÃO
*   Níveis do processo de modelagem (**ARQUITETURA DE TRÊS NÍVEIS**):
    *   Modelo conceitual (alto nível) - MCD.
    *   Modelo lógico - MLD.
    *   Modelo Físico (baixo nível) - MFD.

## MODELO CONCEITUAL
*   Representa o mundo real com uma **visão simplificada** dos dados e seus relacionamentos.
*   **Neste nível, o projeto é independente de SGBD**. Detalhes de implementação não aparecem.
*   Será possível descrever os tipos de dados requeridos, os relacionamentos e regras de consistência.
*   **DER simplificado é desenvolvido nesse etapa**.
*   Exemplo: cadastro de produtos em uma loja.
    *   Dados necessários: nome do produto, categoria de produto, código do fornecedor, tipo de embalagem, tamanho, quantidade.

## MODELO LÓGICO
*   Modelo lógico não distante do posterior modelo físico do banco de dados, **já conta com as limitações, paradigmas (OO, relacional etc.), define as chaves, normalização** etc.
*   **Neste nível, o projeto é independente de SGBD**.
*   Os **tipos de dados são completamente definidos**, **mostrando o relacionamento entre eles**.

## MODELO FÍSICO
*   No modelo físico, define-se o esquema e parte-se para a implementação física utilizando o **SGBD** mais adequado, descrevendo e solucionando o problema por meio de uma **linguagem**.


## ESQUEMA
*   **Schema**: definição do **banco de dados** especificada durante o projeto. Tudo que é representado no banco de dados. É **armazenada no Dicionário de Dados**.
*   O esquema define todos os elementos que compõem o banco de dados.

## ETAPAS 
*   Etapas do desenvolvimento de um banco de dados:
    *   Especificação e análise de requisitos.
    *   Projeto conceitual.
    *   Projeto lógico (expresso em um modelo de dados, como o relacional)
    *   Projeto físico.

## TAREFAS
*   Tarefas para modelagem:
    *   Identificar:
        *   entidades.
        *   atributos.
        *   Relacionamentos
    *   Criar e associar chaves.
    *   Normalizar para reduzir redundâncias.
    *   Desnormalizar para aumentar performance.

# ANEXOS
Modelo conceitual:

![Modelo conceitual](https://i.stack.imgur.com/xUDuZ.png)

Modelo lógico:

![Modelo lógico](https://i.stack.imgur.com/yqcUn.png)

Modelo físico:

![Modelo físico](https://i.stack.imgur.com/A41nG.png)