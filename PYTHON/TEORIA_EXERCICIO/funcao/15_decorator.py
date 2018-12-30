# !/usr/local/bin/python3

# Decora a função que recebe como parâmetro
# Conceito de composição
def log(function):
    def decorator(*args, **kwargs):
        print('Inicio da chamada da função: {}'.format(function.__name__))
        print('args: {}'.format(args))
        print('kwargs: {}'.format(kwargs))
        resultado = function(*args, **kwargs)
        print('Resultado da chamada: {}'.format(resultado))
        return resultado
    return decorator


@log
def soma(x, y):
    return x + y


@log
def sub(x, y):
    return x - y


if __name__ == '__main__':
    print(soma(5, 7))
    print(sub(5, y=7))
