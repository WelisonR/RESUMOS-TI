# !/usr/local/bin/python3


def tag_bloco(conteudo, *args, classe='sucess', inline=False):
    tag = 'span' if inline else 'div'
    html = conteudo if not callable(conteudo) else conteudo(*args)
    return '<{} class="{}">{}</{}>'.format(tag, classe, html, tag)


def tag_lista(*itens):
    lista = ''.join(('<li>{}</li>'.format(item) for item in itens))
    return '<ul>{}</ul>'.format(lista)


if __name__ == '__main__':
    # Testes (assertions)
    print(tag_bloco('bloco'))
    print(tag_bloco('inline e classe', classe='info', inline=True))
    print(tag_bloco('inline', inline=True))
    print(tag_bloco('falhou', classe='error'))
    
    # passagem com função (tag_lista)
    print(tag_bloco(tag_lista('Item 1', 'Item 2'), classe='Info'))
    print(tag_bloco(tag_lista, 'Sábado', 'Domingo',
                    classe='info', inline=True))
