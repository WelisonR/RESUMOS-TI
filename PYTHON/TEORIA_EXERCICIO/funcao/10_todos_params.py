def todos_params(*args, **kwargs):
    print('args: {}'.format(args))
    print('kwargs: {}'.format(kwargs))


if __name__ == '__main__':
    todos_params('a', 'b', 'c')
    todos_params(1, 2, 3, legal=True, valor=12.99)
    todos_params('Ana', False, [1, 2, 3], tamanho='M', fragil=False)
    # problema, posicionais devem estar antes
    # todos_params(primeiro='João', 'Maria')
