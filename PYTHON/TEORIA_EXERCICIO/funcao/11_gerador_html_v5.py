# !/usr/local/bin/python3
bloco_attr = ('bloco_acesskey', 'bloco_id')
ul_attr = ('ul_id', 'ul_style')


def get_attr(informados, suportados):
    # Junta os diversos items com um espaço entre eles
    return ' '.join('{}="{}"'.format(k.split('_')[-1], v)
                    for k, v in informados.items() if k in suportados)


def tag_bloco(conteudo, *args, classe='sucess', inline=False, **novos_attr):
    tag = 'span' if inline else 'div'
    html = conteudo if not callable(conteudo) \
        else conteudo(*args, **novos_attr)
    atributos = get_attr(novos_attr, bloco_attr)
    return '<{} {} class="{}">{}</{}>'.format(tag, atributos, classe, html, tag)


def tag_lista(*itens, **novos_attr):
    lista = ''.join(('<li>{}</li>'.format(item) for item in itens))
    return '<ul {}>{}</ul>'.format(get_attr(novos_attr, ul_attr), lista)


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
    print(tag_bloco(tag_lista, 'Item 1', 'Item 2', classe='Info',
                    bloco_acesskey='m', bloco_id='conteudo', ul_id='lista'))
