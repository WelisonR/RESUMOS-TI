# !/usr/local/bin/python3

arquivo = open('pessoas.csv')
dados = arquivo.read()
arquivo.close()

for registro in dados.splitlines():
    registro = registro.split(',')
    print('Nome: {}, Idade: {}'.format(*registro))
