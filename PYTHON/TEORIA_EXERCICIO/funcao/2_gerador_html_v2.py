# !/usr/local/bin/python3


def tag_bloco(texto, classe='sucess', inline=False):
    tag = 'span' if inline else 'div'
    return '<{} class="{}">{}</{}>'.format(tag, classe, texto, tag)


if __name__ == '__main__':
    # Testes (assertions)
    print(tag_bloco('bloco'))
    print(tag_bloco('inline e classe', 'info', True))
    print(tag_bloco('inline', inline=True))
    print(tag_bloco('falhou', 'error'))
