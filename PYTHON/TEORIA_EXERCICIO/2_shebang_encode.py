#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Acima aplica-se o encode (evita problemas com acentuação em py2)
# e também o shebang (executa sem chamar o python explicatamente) - ./nomeArquivo

import math
import sys


def circulo(raio):
    return math.pi * raio ** 2


def help():
    print("""\
É necessário informar o raio do círculo

Sintaxe: area_circulo <raio>""")


if __name__ == '__main__':
    if len(sys.argv) < 2:
        help()
        sys.exit(1)

    if not sys.argv[1].isnumeric():
        help()
        print('O raio deve ser um valor inteiro')
        sys.exit(2)
    
    raio = int(sys.argv[1])
    area = circulo(raio)
    print('Área do círculo', area)

    