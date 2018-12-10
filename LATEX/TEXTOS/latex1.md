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

#### INSERÇÃO DE IMAGENS/FIGURAS
*   Pacotes: `\usepackage{graphicx}`, `usepackage{float}` (força o posicionamento).
*   Uso:
```
    \begin{figure}[H]
    	\centering
    	\includegraphics[width=0.7\linewidth]{default}
    	\caption[Legenda Curta para referência]{Referência maior para falar vários blablabla.}
    	\label{fig:fig1}
    \end{figure}
```
*   Lista de figuras:
```
    \listoffigures
    \newpage
```
*   Referência com labels: `\ref{labelname}`.

#### LISTAS
*	Lista não ordenada:
```
	\begin{itemize}
		\item Primeiro item.
		\item Segundo item.
	\end{itemize}
```
*	Lista ordenada:
```
\begin{enumerate}
		\item Primeiro item.
		\item Segundo item.
			\begin{enumerate}
				\item Primeiro item.
			\end{enumerate}
	\end{enumerate}
```
*	Lista com descrição (nome e correspondência):
```
    \begin{description}
    	\item[Primeiro] Este é um item.
    \end{description}
```

#### TABELAS
*   Pacotes:
    *   Geral: `\usepackage{booktabs}`.
    *   Mesclar linhas: `\usepackage{multirow}`.
    *   Alterar margens da tabela: `\usepackage{tabularx}`.
Lista de tabelas:
```
    \listoftables
    \newpage
```
*   Site facilitador: `https://www.tablesgenerator.com/`.
*   Exemplo de tabela com tabularx:
```
\renewcommand{\arraystretch}{1.5}
\begin{table}[H]
    \centering
    \caption[legenda curta]{Legenda longa.}
    \label{tab:tab1}
    \begin{tabularx}{0.5\textwidth}{@{}YYYX@{}}
        \textbf{X} & \textbf{Y} & \textbf{Z} & \textbf{Total} \\ \midrule
        1          & 2          & 3          & 6              \\
        3          & 6          & 9          & 18             \\
        9          & 6          & 3          & 18             \\ \midrule
        \multicolumn{4}{l}{Fonte: Almeida, 2018.}            
    \end{tabularx}
\end{table}
```
*   Definição do Y (centralizado): `\newcolumntype{Y}{>{\centering\arraybackslash}X}`.