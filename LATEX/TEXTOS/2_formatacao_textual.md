#### FORMATAÇÃO TEXTUAL
*   Parágrafo: basta deixar uma linha branca entre os parágrafos.
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
*   Tamanhos de textos:
    *   Pequeno: `{\tiny Texto pequeno.}`.
    *   Normal: `Texto normal.`.
    *   Grande: `{\huge Texto grande.}`.
*   Tipos de textos:
    *   Negrito: `\textbf{Texto em negrito.}`.
	*   Itálico: `\textit{Texto em itálico.}`.
	*   Underline: `\underline{Texto sublinhado.}`.
	*   Mesclagem: `\underline{\textbf{Texto negrito e sublinhado.}}`.

#### DEFINIÇÃO DE CORES
*   Cores:
    *   Packages:
        *   `\usepackage{xcolor}`.
        *   `\usepackage{afterpage}`.
    *   Texto: `\textcolor{red}{Texto vermelho}`.
    *   Fundo do texto: `\colorbox{gray}{Este fundo está cinza!}`.
    *   Fundo da página: `\pagecolor{myColor}\afterpage{\nopagecolor}`.
