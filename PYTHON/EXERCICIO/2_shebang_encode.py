# -*- coding: utf-8 -*-
# !/usr/bin/python3

# Acima aplica-se o encode (evita problemas com acentuação em py2)
# e também o shebang (executa sem chamar o python explicatamente)
# ./nomeArquivo
import math
import sys
import errno


ERRO = '\033[91m'
NORMAL = '\033[0m'


def circulo(raio):
    return math.pi * raio ** 2


def help():
    print('É necessário informar o raio do círculo')
    print('Sintaxe: {} <raio>'.format(sys.argv[0]))


if __name__ == '__main__':
    if len(sys.argv) < 2:
        help()
        sys.exit(errno.EPERM)

    if not sys.argv[1].isnumeric():
        help()
        print(ERRO, 'O raio deve ser um valor inteiro', NORMAL)
        sys.exit(errno.EINVAL)

    raio = int(sys.argv[1])
    area = circulo(raio)
    print('Área do círculo', area)
