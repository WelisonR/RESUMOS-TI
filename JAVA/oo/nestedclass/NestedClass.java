package oo.nestedclass;

// Próposito: agrupar classes que pertencem uma a outra
class NestedClass {
    int x = 10;

    // Diferente do comum, uma classe interna pode ser private ou protected
    // A classe interna pode acessar atributos e métodos da classe externa
    class InnerClass {
        int y = 5;

        public int myInnerMethod() {
            return x;
        }
    }
}