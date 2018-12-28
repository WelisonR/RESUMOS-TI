# !/usr/local/bin/python3

arquivo = open('pessoas.csv')
for registro in arquivo:
    registro = registro.split(',')
    print('Nome: {}, Idade: {}'.format(*registro))
arquivo.close()
