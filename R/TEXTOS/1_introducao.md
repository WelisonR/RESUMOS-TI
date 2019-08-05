# R
*   Principais características:
    *   Utilizado para análise estatística, representação gráfica e relatórios.
    *   R pode ser integrado a módulos escritos em C, C++, .Net, Python e FORTRAN para ter eficiência.
    *   R disponibilidade uma vasta coleção de ferramentas para análises estatísticas.
    *   Disponível sobre a licença GNU.
    *   Criadores: Ross Ihaka e Robert Gentleman, University of Auckland, 1993.

*   IDE: RStudio. (melhor Jupyter Notebook)
*   No VSCode, procurar extensão: `R`.

# INSTALAÇÃO

*   Instalar a linguagem R:

```sh
$ sudo apt-get install r-base
```
*   Pacotes:
    *   Dependência: `sudo apt-get install libcurl4-openssl-dev`.

```sh
$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
$ sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu disco-cran35/'
$ sudo apt-get update
```

*   Instalar os pacotes:
```sh
$ sudo R
> install.packages('Rcmdr', dependencies = TRUE)
> library(Rcmdr)
```

*   Para instalar os pacotes é necessário o `sudo`.


## R no Jupyter Notebook

*   `sudo R` e execute:
```R
install.packages(c('rzmq','repr','IRkernel','IRdisplay'),
                 repos = c('http://irkernel.github.io/', 
                           getOption('repos')), 
                 type = 'source')
IRkernel::installspec(user = FALSE)
```
