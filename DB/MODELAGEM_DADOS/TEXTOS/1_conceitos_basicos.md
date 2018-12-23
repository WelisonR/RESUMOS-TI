# CONCEITOS BÁSICOS DE BANCO DE DADOS

## CONCEITOS
*   **Dados**: primários, avulsos.
*   **Informação**: dados em um contexto.
*   **Metadados**: permite a representação e identificação dos dados. São mantidos no **Dicionário de Dados** (ou em um **Catálogo de Dados**)
*   **Banco de dados**: **coleção organizada de dados** que atinge um aspecto do mundo real. Objetos: tabelas, esquemas, visões, consultas, relatórios, procedimentos, triggers, etc.
*   Sistema de Gerenciamento de Banco de Dados (**SGBD**):
    *   _Softwares_ **responsáveis por operar os bancos de dados**, além de proteger o banco de dados e mantêlo ao longo do tempo.
    *   Exemplos: PostgreSQL, MongoDB, SAP Sybase.

## SISTEMA DE BANCO DE DADOS
*   **Sistema de Bancos de Dados**:
    *   Usuários &rightarrow; Aplicativos de Acesso &rightarrow; SGBD &leftrightarrow; Banco de Dados + Metadados
*   **Características e Funcionalidades**:
    *   Controle de redundância.
        *   Evita duplicidade.
    *   **Múltiplas visões dos dados**.
        *   Exibir dados de forma distintas de acordo com **quem e como fez a requisição**.
    *   Controle de concorrência.
        *   Ex.: não permite sobreescrever dados por usuários diferentes ao mesmo tempo.
    *   Backup e Restauração.
    *   Autenticação e autorização de acesso.
    *   Restrições de integridade.

## MODELOS DE BANCOS DE DADOS - HISTÓRICOS
*   **Modelo Hierárquico**:
    *   Conjuntos de tipos de **registros interconectados por meio de ligações**.
        *   Ligações: ligação entre dois tipos de registros - pai e filho.
    *   Esquema: diagrama de estrutura em árvore.
    *   **Acesso**: **unidirecional**, a partir do pai.
*   **Modelo em rede**:
    *   **Organizado em tipos e ligações entre dois registros**.
    *   **Não há restrição hierárquica**.
    *   Esquema e ocorrência de dados são visualizadas como um **grafo direcionado**.
*   **Modelo relacional**:
    *   Dados são organizados em **entidade**s, conforme cada assunto, e registrados como **atributos** da entidade.
    *   As entidades se **inter-relacionam**.

# ANEXOS
Modelo Hierárquico:

![Modelo Hierárquico](https://snag.gy/zLmiAH.jpg)

Modelo em rede:

![Modelo em rede](https://snag.gy/vBnfc4.jpg)

Modelo relacional:

![Modelo relacional](https://snag.gy/ErWM4u.jpg)