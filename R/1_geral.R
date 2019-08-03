# x <- 5 valores randômicos
x <- rnorm(5)
print(x)
# print com 3 casas decimais
print(x, dig = 3)
# configuração global da quantidade de dígitos
# options(digits=4)

y <- rnorm(x)

#plot(x, y)
print(args(plot.default))

# Ordenar x e y na sequência crescente de x
x <- sort(x)
y <- y[order(x)]

print(x)
print(x[1])
# Valores em um intervalo [a, b]
x[2:5]
# Arredonda os valores com uma casa decimal
round(x, dig = 1)
# Calcula o teto dos valores
ceiling(x)
# Calcula o piso dos valores
floor(x)

# Plot avançado
par(mfrow=c(4,2), mar=c(2,2,0.3,0.3), mgp=c(1.5, 0.6, + 0))
plot(x, y, type = "l")
plot(x, y, type = "p")
plot(x, y, type = "o")
plot(x, y, type = "b")
plot(x, y, type = "h")
plot(x, y, type = "S")
plot(x, y, type = "s")
plot(x, y, type = "n")
par(mfrow = c(1,1))

# mostra objetos da área de trabalho
print(ls())
# remove-os
rm(x, y)

# valores sequenciais
x <- 1:20
print(x)
w <- 1 + sqrt(x)/2
print(w)

# Criação de um data frame
dummy <- data.frame(x = x, y = x + rnorm(x)*w, w = w)
print(dummy)
rm(x, w)

# Regressão linear de y em x
fm <- lm(y ~ x, data=dummy)
print(summary(fm))
# Regressão ponderada
fm1 <- lm(y ~ x, data=dummy, weight=1/w^2)

# Torna visível as colunas do dataframe no caminho de procura do R
attach(dummy)
print(search())

lrf <- lowess(x, y)
plot(x, y)
lines(lrf, lty = 3)
abline(coef(fm))
abline(coef(fm1), lty = 2)
par(mfrow=c(2,2))
plot(fm)
abline(0, 1, lwd=2)
legend(1, 20, c("linear simples", "ponderada", "loess", "verdadeira"))

# Remove item de search() dos objetos disponíveis
detach(dummyb)

# Visualizar tabelas externas
#file.show("morley.tab")
mm <- read.table("http://www.leg.ufpr.br/~paulojus/dados/morley.tab")
print(mm)