# !/usr/local/bin/python3

# É necessário fechar o arquivo,
# mesmo que ocorra algum impeditivo durante o processo
# except possibilita o arquivo ser executado em integra,
# mesmo que ocorra um erro
# finally sempre é executado
try:
    arquivo = open('pessoas.csv')

    for registro in arquivo:
        registro = registro.strip('\n').split(',')
        print('Nome: {}, Idade: {}'.format(*registro))
except IndexError:
    pass
finally:
    arquivo.close()


if arquivo.closed:
    print('\nArquivo fechado!')
