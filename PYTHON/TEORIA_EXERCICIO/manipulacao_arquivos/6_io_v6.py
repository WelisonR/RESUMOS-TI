# !/usr/local/bin/python3

# with fecha o arquivo automaticamente
with open('pessoas.csv') as arquivo:
    with open('pessoas.txt', 'w') as saida:
        for registro in arquivo:
            registro = registro.strip().split(',')
            print('Nome: {}, Idade: {}'.format(*registro), file=saida)


if arquivo.closed:
    print('\nArquivo fechado!')


if saida.closed:
    print('Saida concluída!')
