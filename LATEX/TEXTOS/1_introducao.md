#### INSTALAÇÃO
*   TexLive: `sudo apt-get install texlive-full`;
*   TexStudio: `sudo apt-get install texstudio`. (ou extensão no visual studio code)
    *   TexStudio português: Options -> Config -> General -> Language -> "pt_BR".
    *   Corretor ortográfico: 
        *   Options -> Language Checking -> Spell Check -> "pt_BR".
        *   "Spelling Dictionary Directories": `/usr/share/hunspell;[txs-settings-dir]/dictionaries/`.
        *   _Download pt_BR_: `https://extensions.libreoffice.org/extensions/vero-verificador-ortografico-e-hifenizador-em-portugues-do-brasil/3.2`.
        *   Tutorial: `https://tex.stackexchange.com/questions/87650/dictionary-for-texstudio-no-dictionary-available`.
    *   Habilitar linhas no editor: Options -> Config -> Show advanced Options -> Adv. Editor -> Show Line Number.

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
