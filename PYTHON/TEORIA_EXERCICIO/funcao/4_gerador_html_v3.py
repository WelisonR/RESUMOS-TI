# !/usr/local/bin/python3


def tag_bloco(conteudo, classe='sucess', inline=False):
    tag = 'span' if inline else 'div'
    return '<{} class="{}">{}</{}>'.format(tag, classe, conteudo, tag)


def tag_lista(*itens):
    lista = ''.join(('<li>{}</li>'.format(item) for item in itens))
    return '<ul>{}</ul>'.format(lista)


if __name__ == '__main__':
    # Testes (assertions)
    print(tag_bloco('bloco'))
    print(tag_bloco('inline e classe', 'info', True))
    print(tag_bloco('inline', inline=True))
    print(tag_bloco('falhou', 'error'))
    print(tag_bloco(tag_lista('Item 1', 'Item 2'), classe='Info'))
