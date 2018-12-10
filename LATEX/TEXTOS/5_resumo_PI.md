# LATEX
*   Definição: conjunto de macros para o programa de diagramação de textos TeX.
*   Desenvolvedor: Leslie Lamport.
*   Oriundo: TEX, criador por Donald Knuth.

Características:
*   Qualidade tipográfica - textos impressos de alta qualidade.

## TIPOS DE PROCESSADORES DE TEXTOS

### EDITOR WYSWYG
*   "what you see is what you get".
*   Texto digitado exatamente como impresso.
*   Verificação direta da entrada do texto.
*   Exemplos: libre office, microsoft word.

### EDITOR COM ARQUIVO FONTE
*   Textos e comandos escritos em arquivo fonte.
*   Submissão a um formatador de textos LATEX.
*   Impressão e verificação indireta do texto final.
*   Extensão .tex.

#### VANTAGENS DOS EDITORES COM ARQUIVO FONTE
*   Mudanças na formatação do texto inteiro com apenas a mudança de alguns comandos.
*   Fórmulas complexas bem representadas com comandos.
*   Numeração automática de fórmula, sessões, definições, exemplos e teoremas.
*   Possibilidade automática de citações de bibliografia, fórmulas, exemplos, figuras.
*   Excelente organização e estruturação do texto.
*   Portável e gratuito.

#### EDITORES LATEX
*   LATEX: TeXnicCenter, Texmaker, TeXworks, WinEdt, Miktex.

## ORGNANIZAÇÃO DO RELATÓRIO

| Capa                                               | - |
|----------------------------------------------------|----------|
| Agradecimentos                                     | - |
| Resumo e Abstract                                  | -      |
| Lista de figuras, tabelas, abreviaturas e símbolos | -      |
| Sumário                                            | -      |
| Introdução                                         |  -     |
| Desenvolvimento                                    | Referêncial teórico, metodologia, resultados e discussão      |
| Conclusões                                         | Contribuições do trabalho, comparação com outras soluções, limitação da solução proposta, dificuldades e sugestões      |
| Referências bibliográfica                          | -      |
| Anexos e apêndices                                 | -      |

## ESTRUTURA BÁSICA

### CARACTERES RESERVADOS NO LATEX:
*   #, $, %, ^, &, _, {, }, ~, \.
*   Para o uso, utilize "\simbolo".
*   Comandos geralmente começam com "\\".
*   Comentários: "%".

### ORGANIZAÇÃO DO TEXTO
*   Título principal: \section{Desenvolvimento}.
*   Sub-título secundário: \subsection{Metodologia}.
*   Sub-título de 3º nível: \subsubsection{Planning poker}.


### COMPILAÇÃO

> Figuras .eps: LATEX (.tex) > latex > Device independent file (.dvi) > dvips > PostScript file (.ps) > ps2pdf > Portable Document Format (.pdf)

> Figuras .jpg/.pdf: LATEX (.tex) > pdflatex > Portable Document Format (.pdf)

### ESTRUTURA LATEX
*   Preâmbulo:
    *   Comandos globais.
    *   Estilo: article, report, book, letter.
    *   Opções: 12pt, a4paper, twocolumn, etc.
    *   Utilização de pacotes nos comandos globais: \usepackage[opção] {pacote}.
        *   \usepackage[brazil]{babel}.
        *   \usepackage[utf8]{inputenc}.
    *   Sem comandos globais, o Latex seleciona valores padrão.


```
    \documentclass[opcões]{estilo}
```

*   Corpo Principal:
```
    \begin{document}
        texto e comandos de efeito local
    \end{document}
```

Exemplo de comando: \input{editaveis/informacoes}.


### FÓRMULAS MATEMÁTICAS
*   O LATEX utiliza comandos textuais de fácil sintaxe e rapidez.
*   Implementações:
```
    $ formula $
```

ou,

```
    \begin{equation}
        formula
    \end{equation}
```

#### EXEMPLOS COM EQUATION:
```
    \begin{equation}
        x = e^{2 \cdot y} + \int_{0}^{\infty}x \cdot dx

        y = \sum_{k = 0}^{10} k = 0+1+...+10 = 66

        z = \prod_{k = 1}^{n} \frac{\partial u}{\partial t}
    \end{equation}
```

#### MATRIZES
*   Ambiente array.
*   Colunas separadas por um & e salto de linha por "\\".
*   Exemplos:
```

\begin{equation*}
    A = \left[
        \begin{array}{cccc}
        a_{11} & a_{12} & \cdots & a_{1m}\\
        a_{21} & a_{22} & \cdots & a_{2m}\\
        \vdots & \vdots & \ddots & \vdots\\
        a_{n1} & a_{n2} & \cdots & a_{nm}\\
        \end{array}
        \right]
\end{equation*}

```

### FIGURAS

*   Exemplo:
```
    \begin{figure}
        \includegraphics[scale=0.2] {unb.jpg}
        \caption{Logo da UnB}
        \label{figura} 
    \end{figure}

    Referência: A figura \ref{figura}

    % label = nome genérico
```

*   Exemplo avançado:

```
    \begin{figure}[htb]
    \begin{minipage}[b]{0.30\linewidth}
    \includegraphics[width=4cm]{figura1}
    \caption{Figura 1}
    \end{minipage}
    \hspace{0.15\textwidth}
    \begin{minipage}[b]{0.30\linewidth}
    \includegraphics[width=4cm]{figura2}
    \caption{Figura 2}
    \end{minipage}
    \caption{Exemplo usando \textit{minipage}}
    \label{figExemplo2}
    \end{figure}
```

#### TABELAS

*   Ambiente tabular: \begin{tabular}{especificação}.
*   Alinhamento: l, r, c.
*   Mudar coluna: &.
*   Mudar linha: \\.
*   Inserir linha horizontal: \hline.
*   É possível inserir \caption.

Exemplo de tabela:

```

    \begin{table}
    \begin{center}
    \begin{tabular}{|l||c|c|c|c|c|}\hline
    Horário &Seg &Ter &Qua &Qui &Sex\\ \hline\hline
    13:00-14:00& & & & & \\ \hline
    14:00-15:00& & & & & \\ \hline
    15:00-16:00& & & & & \\ \hline
    16:00-17:00& PI1 & &PI1 & & \\ \hline
    17:00-18:00& PI1 & &PI1& & \\ \hline
    \end{tabular}
    \end{center}
    \caption{Horário de Projeto Integrador}
    \end{table}

```

#### REFERÊNCIAS
*   Arquivo .bib. Ex: arquivo.bib.
*   Inserir no preâmbulo: \bibliographystyle{plain}.
*   Adicionar ao corpo do documento: arquivo.bib.

Exemplo de código:
```

    @TIPO{Id,
    AUTHOR = {XXX},
    TITLE = {XXX},
    PUBLISHER = {XXX},
    ...
    }

```

*   Citando no texto:
```
\cite{Id}
```
