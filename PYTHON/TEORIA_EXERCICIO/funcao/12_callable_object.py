class Potencia:
    """
        Calcula uma potência específica
    """
    def __init__(self, expoente):
        self.expoente = expoente

    def __call__(self, base):
        return base ** self.expoente


if __name__ == '__main__':
    quadrado = Potencia(2)
    cubo = Potencia(3)

    if callable(quadrado) and callable(cubo):
        print('3^2 => {}'.format(quadrado(3)))
        print('5^3 => {}'.format(cubo(5)))
        print(Potencia(4)(2))
