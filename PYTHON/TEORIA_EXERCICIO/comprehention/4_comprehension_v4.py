# Gasta menos memória, gera os dados sobre demanda
generator = (i ** 2 for i in range(10) if i % 2 == 0)

# Num for, não é necessário o next
for numero in generator:
    print(numero)
