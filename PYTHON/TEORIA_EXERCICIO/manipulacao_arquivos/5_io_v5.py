# !/usr/local/bin/python3

# with fecha o arquivo automaticamente
with open('pessoas.csv') as arquivo:
    for registro in arquivo:
        registro = registro.strip('\n').split(',')
        print('Nome: {}, Idade: {}'.format(*registro))


if arquivo.closed:
    print('\nArquivo fechado!')
