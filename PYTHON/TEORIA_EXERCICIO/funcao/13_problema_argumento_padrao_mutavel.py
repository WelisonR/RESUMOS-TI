# !/usr/local/bin/python3


# Lista do argumento é mutável, caso fosse uma tupla não seria
def fibonacci(sequencia=[0, 1]):
    sequencia.append(sequencia[-1] + sequencia[-2])
    return sequencia


if __name__ == '__main__':
    inicio = fibonacci()
    print(inicio, id(inicio))
    print(fibonacci(inicio))
    restart = fibonacci()
    print(restart, id(restart))
    assert restart == [0, 1, 1]
