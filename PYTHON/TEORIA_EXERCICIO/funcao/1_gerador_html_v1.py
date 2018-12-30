# !/usr/local/bin/python3
# Função em python é um objeto
# Tipos de Parâmetros: posicional ou nomeado
# *args, **kwargs: nomes não são fixos, pode-se colocar o que quiser
# *args -> gera uma tupla
# **kwargs -> gera um dicionário

# classe é opcional, se não for atribuido nada, será 'sucess'


def tag_bloco(texto, classe='sucess'):
    return '<div class="{}">{}</div>'.format(classe, texto)


if __name__ == '__main__':
    # Testes (assertions)
    assert tag_bloco('Incluído com sucesso!') == \
        '<div class="sucess">Incluído com sucesso!</div>'
    assert tag_bloco('Impossível excluir!', 'error') == \
        '<div class="error">Impossível excluir!</div>'
