# R é gratuito, de código aberto e livremente distribuido e proporciona um ambiente para análises estatísticas
# Há mirrors do R: CRAN (Compreensive R Archive Network)

# Menu em R com os principais procedimentos estatísticos
# require(Rcmdr)

# print(1+2+3)
# print(2+3*4)
# print(3/2+1) # 3/2 -> double
# print(4*3**3)
# print(sqrt(pi))
# print(factorial(3))

# Além disso tem -Inf, Inf, NaN e NA (not avaliable)

# R é uma linguagem orientada a objetos, case-sentitive
x <- 10
y = 2+2
3*3 -> z
print(x)
print(y)
print(z)

x <- c(23, 34, 12, 11, 34)
# Teste se o dado é NA para todos os valores de x
print(is.na(x))
print(!is.na(x))
print(is.nan(x))
print(is.finite(x))
print(any(!is.finite(x)))
print(all(is.finite(x)))

x[3] <- NA
print(is.na(x))
x1 <- (x-34)/0
print(x1)