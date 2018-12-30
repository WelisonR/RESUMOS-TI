# !/usr/local/bin/python3
# NÃO USE ATRIBUTOS MUTÁVEIS COMO PARÂMETROS DE FUNÇÃO!


# Reinicia-se 'sequencia' internamente. Pode-ser usar tuplas.
def fibonacci(sequencia=None):
    # Se sequência é falso (None), retorna [0, 1]
    sequencia = sequencia or [0, 1]
    sequencia.append(sequencia[-1] + sequencia[-2])
    return sequencia


if __name__ == '__main__':
    inicio = fibonacci()
    print(inicio, id(inicio))
    print(fibonacci(inicio))
    restart = fibonacci()
    print(restart, id(restart))
    assert restart == [0, 1, 1]
