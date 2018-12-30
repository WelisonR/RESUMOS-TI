# **kwargs - dict


# packing
def resultado1_f1(**podium):
    for posicao, piloto in podium.items():
        print('{} -> {}'.format(posicao, piloto))


# unpacking
def resultado2_f1(primeiro, segundo, terceiro):
    print('1) {}'.format(primeiro))
    print('2) {}'.format(segundo))
    print('3) {}'.format(terceiro))


if __name__ == '__main__':
    # packing
    resultado1_f1(primeiro='L. Hamilton',
                  segundo='M. Verstappen',
                  terceiro='S. Vettel')

    # unpacking
    podium = {'primeiro': 'L. Hamilton',
              'terceiro': 'S. Vettel',
              'segundo': 'M. Verstappen'}
    resultado2_f1(**podium)
