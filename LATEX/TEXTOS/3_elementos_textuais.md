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

#### MATEMÁTICA NO LATEX
*   Pacote adicional: `\usepackage{amsmath}`.
*   Tradução de comandos: `\renewcommand{\sin}{\mathrm{sen\hspace{0.5mm}}}`.
*   Exemplo de uso do modo matemático:
```
    Equação do Segundo Grau: $ ax^2 + bx + c = 0 $. A solução é:

	\begin{equation}
		x = \frac{-b \pm \sqrt[2]{b^2 - 4ac}}{2a}
	\end{equation}

	\begin{equation*}
		\begin{array}{cc}
		x_1 = \dfrac{-b - \sqrt[2]{b^2 - 4ac}}{2a}, &
		x_2 = \dfrac{-b + \sqrt[2]{b^2 - 4ac}}{2a}
		\end{array}
	\end{equation*}

	\begin{equation}
		A = \begin{bmatrix} % array, matrix, b/p/v/Vmatrix
				1 & 0 & 0 \\
				0 & 1 & 0 \\
				0 & 0 & 1
			\end{bmatrix}
        \cdot \left(\dfrac{1}{2}\right)
	\end{equation}
```
