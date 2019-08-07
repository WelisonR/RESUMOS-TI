# Em R, tem-se os seguintes tipos de objetos:
# vetores, matrizes e arrays, data-frames, listas, fatores.
# Além disso, ainda há as funções.

# Pode-se utilizar is.*(arg) pra testar o tipo do objeto

# R é uma linguagem vetorial, opera vetores e matrizes sem loop


# função c(), usada para criar um vetor, "concatenar"
x2 <- c(1, 3, 6)
print(length(x2))
print(is.vector(x2))

x3 <- 1:10

# Comandos seq() e rep()
x4 <- seq(0, 1, by = 0.1)
x5 <- seq(0, 1, len = 6)
print(x5)

x6 <- rep(1, 5)
print(x6)
x7 <- rep(c(1, 2), c(3, 5))
print(x7)
# x7 <- rep(1:4, each=5) # repete cada 5 vezes

# Vetor alfabético
x8 <- c("a", x2)
print(x8)

print(x2^(1:3))

x10 <- round(rnorm(10, mean=25, sd=4))
print(x10)
# Aplicação de algumas funções sobre os vetores
print(sum(x10))
print(mean(x10))
print(var(x10))
print(min(x10))
print(max(x10))
print(summary(x10)) # == fivenum(x3) para salvar em variável

# Acessando índices do vetor
# Os elementos são indexados a partir do 0
x11 <- c(1, 2, 3, 3, 2, 1)
print(x11)
print(x11[2 * (1:2)])

# Valores maiores que 2
ind.2 <- x11 > 2
print(x12 <- x11[ind.2])

# Vetores de caracteres
nomes <- c("fulano", "beltrano", "cicrano")
print(nomes)

# Letras do alfabeto estão disponíveis
print(LETTERS[1:10])

# Concatenar com algumas regras
print(paste("fulano", 2, sep=""))
print(paste(letters[1:10], 2, sep=""))
print(rep(paste("T", 1:3, sep=""), c(4, 4, 3)))

# Factors - tem "levels"
estados <- c("PR", "SC", "RS")
estados <- factor(estados)
print(estados[-1])

est <- c("SC", "PR", "SC", "PR", "RS", "SP", "RS", "SP", "ES", "PR", "RJ", "ES")
print(table(est))
sesul <- factor(est, levels=c("PR", "SC", "RS", "MG", "SP", "RJ", "ES"))
print(table(sesul))

# Agrupar estados por região
regiao <- sesul
print(levels(regiao))
levels(regiao) <- c("Sul", "Sul", "Sul", "Sudeste", "Sudeste", "Sudeste", "Sudeste")
print(table(regiao))

# Ordenar, reverter e rank do vetor
vec <- round(rnorm(7, m=70, sd=10))
print(vec)
print(rev(vec))
print(sort(vec))
print(order(vec)) # ordem dos items considerando ordenação
print(vec[order(vec)])
print(rank(vec)) # confuso
print(vec)
print(vec%%5) # resto
print(vec%/%5) # quociente (inteiro)

# which: retorna a posição de um elemento que obedece a dado critério
print(which(vec > 70))
print(which.max(vec))
print(which.min(vec))

# Indices negativos removem itens
ans <- c(1, 2, 3)
print(ans)
ans <- ans[-1]
print(ans)


# MATRIZES
m1 <- matrix(1:12, ncol=3)
print(m1)
m2 <- matrix(1:12, ncol=3, byrow=T) # inverte o default e preenche por linhas
print(m2)
print(length(m1))
print(dim(m1))
print(nrow(m1))
print(ncol(m1))
print(m1[1, 2])
print(m1[, 2])
print(m1[1:2, 2:3])
dimnames(m1) <- list(c("L1", "L2", "L3", "L4"), c("C1", "C2", "C3"))
print(dimnames(m1))

m2 <- cbind(1:5, 6)
print(m2)

m4 <- matrix(1:6, nc=3)
m5 <- matrix(10*(1:6), nc=3)
print(m4)
print(m5)
print(m4+m5)
print(m4*m5)
print(m5-m4)
print(m5/m4)

# MULTIPLICAÇÃO DE MATRIZES
print(t(m4) %*% m5) # t(): transposta # equivalente a crossprod

# SISTEMA DE EQUAÇÕES
# x+3y-z = 10
# 5x-2y+z = 15
# 2x+y-z = 7

mat <- matrix(c(1, 5, 2, 3, -2, 1, -1, 1, -1), nc=3)
vec <- c(10, 15, 7)
print(solve(mat, vec))

# print(cbind(1, 1:10)) # col1 = toda 1; col2 = 1:10


# ARRAYS

ar1 <- array(1:24, dim=c(3, 4, 2)) # 3D
print(ar1)

# Colunas 2 e 3
print(ar1[2, , 1])

# Atribuindo nomes às dimensões de um array
dimnames(ar1) <- list(c("Baixo", "Médio", "Alto"), paste("col", 1:4, sep=""), c("Masculino", "Feminino"))
print(ar1)

data(Titanic) # Dados já contidos no R
print(Titanic)

# Quantas pessoas havia no total?
print(sum(Titanic))
# Quantas pessoas havia na tripulação (crew)?
print(sum(Titanic[4, , ,]))
# Quantas sobreviveram e quantas morreram?
print(apply(Titanic, 4, sum))
# Quantas crianças sobreviveram?
print(sum(Titanic[, , 1, 2]))

# VETORES, MATRIZES E ARRAYS FORÇAM TODOS OS ELEMENTOS
# A SEREM DO MESMO TIPO, EX., NUMÉRICO OU CARACTER

# DATA-FRAMES
# Permite que cada coluna seja de um tipo

d1 <- data.frame(X = 1:10, Y = c(51, 54, 61, 67, 68, 75, 77, 75, 80, 82))
print(names(d1))
print(d1$X)
# plot(d1$X, d1$Y)

# LISTAS
# Genéricas e flexíveis
lis1 <- list(A=1:10, B="THIS IS A MESSAGE", C=matrix(1:9, ncol=3))
print(lis1$A)

lis1 <- list(nomes=c("Pedro", "Joao", "Maria"), mat=matrix(1:6, nc=2))
print(is.list((lis1[1]))) # [] retorna o tipo lista
print(is.list((lis1[[1]]))) # [[]] retorna o objeto

# FUNÇÕES
# print(lm)

x1 <- array(1:20, dim=c(2, 10))
print(str(x1))