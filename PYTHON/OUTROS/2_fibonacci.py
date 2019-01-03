# !/usr/local/bin/python3


def fibonacci(quantidade):
    resultado = [0, 1]
    for _ in range(2, quantidade):
        resultado.append(sum(resultado[-2:]))
    # while True:
        # resultado.append(sum(resultado[-2:]))
        # if len(resultado) == quantidade:
        #     break
        # resultado.append(resultado[-2] + resultado[-1])
        # penultimo, ultimo = ultimo, penultimo + ultimo

    return resultado


# Presença de valor padrão
def recursive_fibonacci(quantidade, sequencia=(0, 1)):
    return sequencia if len(sequencia) == quantidade else \
        recursive_fibonacci(quantidade, sequencia + (sum(sequencia[-2:]), ))
    # if len(sequencia) == quantidade:
    #     return sequencia
    # # precisa da virgula para ser uma tupla
    # return recursive_fibonacci(quantidade,
    #                            sequencia + (sum(sequencia[-2:]), ))


if __name__ == '__main__':
    # for fib in fibonacci(20):
    #     print(fib)
    for fib in recursive_fibonacci(20):
        print(fib)
