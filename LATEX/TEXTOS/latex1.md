## INSTALAÇÃO

### LINUX
*   TexLive: `sudo apt-get install texlive-full`;
*   TexStudio: `sudo apt-get install texstudio`. (ou extensão no visual studio code)

### NOÇÕES INICIAS
#### ESTRUTURA BÁSICA
*   Definir a classe do documento: `\documentclass{class}`.
    *   Exemplos: book, letter, article, report.
*   Pacotes: adiciona-se logo após o `documentclass`.
    *   Nomenclatura: `\usepackage[options]{package}`.
*   Corpo do documento:
```
    \begin{document}
	    conteúdo...
    \end{document}
```

#### TÓPICOS BÁSICOS
*   Nomes em pt-BR:
    *   Pacote: `\usepackage[brazil, portuguese]{babel}`.
*   Comentários: `% Comentário`.
*   Acentuação:
    *   Acentuação manual: `Est\'a correto!`.
    *   Pacote: `\usepackage[utf8]{inputenc}`.
*   Divisões de tópicos (verificar tipo de documento):
    *   Parte: `\part{name}`.
    *   Capítulo: `\chapter{name}`.
    *   Seção: `\section{name}`.
        *   Subseção: `\subsection{name}`.
*   Referência com labels: `\ref{labelname}`.
É possível não enumerar a seção, subseção com `\subsection*{name}`.

#### FORMATAÇÃO TEXTUAL
*   Margens:
    *   Pacote: `\usepackage[options]{geometry}`.
    *   Possibilidades de uso:
        *   Margem única: `\usepackage[a4paper, margin=2cm]{geometry}`.
        *   Múltiplas margens: `\usepackage[a4paper, left=1cm, right=2cm, top=2cm, bottom=3cm]{geometry}`.
*   Espaçamentos e indentação:
    *   Pacote: `\usepackage{setspace}`
    *   Antes de `\begin{document}`:
        *   Indentação dos parágrafos: `\setlength{\parindent}{1,5}`.
        *   Espaço entre parágrafos: `\setlength{\parskip}{1,0}`.
    *   Espaço entre linhas:
        *   `\singlespacing`.
        *   `\onehalfspacing`.
        *   `\setstretch{3}`.
        *   Parágrafo específico:
            *   `\begin{onehalfspace} Conteúdo \end{onehalfspace}`.
            *   `\begin{spacing}{3} Conteúdo \end{spacing}`.
    *   Espaçamentos:
        *   Horizontal: `\hspace{2cm}`.
        *   Vertical: `\vspace{2cm}`.
*   Parágrafo: basta deixar uma linha branca entre os parágrafos.
*   Tamanhos de textos:
    *   Pequeno: `{\tiny Texto pequeno.}`.
    *   Normal: `Texto normal.`.
    *   Grande: `{\huge Texto grande.}`.
*   Tipos de textos:
    *   Negrito: `\textbf{Texto em negrito.}`.
	*   Itálico: `\textit{Texto em itálico.}`.
	*   Underline: `\underline{Texto sublinhado.}`.
	*   Mesclagem: `\underline{\textbf{Texto negrito e sublinhado.}}`.
*   Quebras:
    *   Quebra de linha: `\newline`, `\\`.
    *   Quebra de página: `\newpage`.
*   Indentação: 
    *   Pacote: `\usepackage{indentfirst}`.
    *   Não indentar: `\noindent`.
*   Alinhamento:
    *   Esquerda: `\begin{flushleft} Conteúdo \end{flushleft}`.
    *   Direita: `\begin{flushright} Conteúdo \end{flushright}`.
    *   Centro: `\begin{center} Conteúdo \begin{center}`.
