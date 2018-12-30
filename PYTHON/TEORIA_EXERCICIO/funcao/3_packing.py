def soma_2(a, b):
    return a + b


def soma_3(a, b, c):
    return a + b + c


def soma_n(*numeros):
    # numeros é uma tupla
    return sum(numeros)


if __name__ == '__main__':
    print(soma_2(2, 3))
    print(soma_3(1, 2, 3))

    # packing
    print(soma_n(1))
    print(soma_n(1, 1))
    print(soma_n(10, 9, 8, 7, 6, 5))

    # unpacking
    tupla_nums = (1, 2, 3)
    print(soma_3(*tupla_nums))
    lista_nums = [1, 2, 3]
    print(soma_3(*lista_nums))
