from datetime import datetime
from loja import Cliente, Vendedor, Compra  # padrão fachada (façade)


def main():
    cliente = Cliente('Maria Rosa', 44)
    vendedor = Vendedor('Jãum Amoedo', 34, 4000)
    compra1 = Compra(cliente, datetime.now(), 512)
    compra2 = Compra(cliente, datetime(2018, 6, 4), 256)
    cliente.registrar_comprar(compra1)
    cliente.registrar_comprar(compra2)
    print('Cliente: {}'.format(cliente), '(adulto)'
          if cliente.is_adulto else '')
    print('Vendedor: {}'.format(vendedor))

    valor_total = cliente.total_compras()
    qtde_compras = len(cliente.compras)
    print('Total: {} em {} compras'.format(valor_total, qtde_compras))
    print('Última compra: {}'.format(cliente.get_data_ultima_compra()))


if __name__ == '__main__':
    main()
