#### MÚLTIPLOS ARQUIVOS
*   Salva-se os textos dos arquivos em vários `.tex`.
*   Inclui no documento principal com `\input{nomeDoDocumento}`.

#### NOTAS DE RODAPÉ
*   Utiliza-se: `\footnote{Nota de rodapé}`.
*   Recursos de rearranjo da ordem:
    *   Pacote: `\usepackage[options]{footmisc}`.
*   Utilizar numeração romana: `\renewcommand{\thefootnote}{\Roman{footnote}}`.
*   Contagem por seção:
```
    \makeatletter
    \@addtoreset{footnote}{section}
    \makeatother
```

#### CITAÇÕES DIRETAS
*   Utilizar \`\` no lugar de ". Porém, é mais recomendado usar o pacote `\usepackage{csquotes}` com:
    *   Sem indentação: `\enquote{Conteúdo}`.
    *   Com indentação:
        *   Citações curtas: `\begin{quote} Citação \end{quote}`.
        *   Citações longas: `\begin{quotation} Citação \end{enquotation}`.

#### CAPA E SUMÁRIO
*	Capa:
	*	`\title{\textbf{\huge{Capa}}}`.
	*	`\author{Welison Lucas}`.
	*	`\date{Dezembro, 2018.}`.
	*	`\maketitle`. Cria título, autor e data.
	*	`\newpage`.
*	Sumário:
	*	`\tableofcontents`.
	*	`\newpage`.

#### ENUMERAÇÃO DAS FOLHAS
*	Reseta a contagem das folhas: `\setcounter{page}{1}`.
*	Define o tipo de contagem: `\pagenumbering{Roman/arabic}`.
*	Limpa (empty) a contagem de dada página: `\thispagestyle{empty/plain/headings/myheadings}`.

#### REFERÊNCIAS
*   Preferir o uso pelo latexstudio.
*   Extensão: `.bib`.
*   Gerar referência facilmente:
    *   Entrar no site da amazon (ou outro) e procurar pelo ISBN-10.
    *   Converter de ISBN para bibtex: `https://manas.tungare.name/software/isbn-to-bibtex`.
*   Exemplo de referência:
```
@book{Fitzgerald2k14,
    Author = {Stephen D. Umans},
    Title = {Máquinas Elétricas de Fitzgerald e Kingsley (Em Portuguese do Brasil)},
    Publisher = {Mc Graw Hill},
    Year = {2014},
    ISBN = {8580553733},
    URL = {https://www.amazon.com/M%C3%A1quinas-El%C3%A9tricas-Fitzgerald-Kingsley-Portuguese/dp/8580553733?SubscriptionId=AKIAIOBINVZYXZQZ2U3A&tag=chimbori05-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=8580553733}
}
```
*   Referência no texto: `\cite{Fitzgerald2k14}`.
    *   Opções: cite/p/t/author/year{Fitzgerald2k14}.
*   Referência embora não citado: `\nocite{Fitzgerald2k14}`.
