package oo;

// Modificadores
public class Modifier {
    public static void main(String[] args) {
        // Modificadores de acesso
        // Definem o nível de acesso para classes, atributos, métodos e construtores

        /*
        Modificadores de classe:
            public: pública, acessível por qualquer outra classe.
            default: acessível apenas pelas classes do mesmo pacote. 
        */

        /*
        Modificadores de atributos, métodos ou construtores:
            public: público, acessível por todas as classes.
            private: acessível apenas pela classe que o define.
            default: acessível a aqueles que pertencem ao mesmo pacote.
            protected: acessível no mesmo pacote e em subclasses (herança).
        */

        // Modificadores de tipo
        // Provê funcionalidades aos tipos de dados envolvidos pelo modificador

        /*
        Modificadores de classe:
            final: classe não pode ser herdada por outras classes.
            abstract: classe não pode criar objetos, deve ser herdada.
        */

        /*
        Modificadores de atributos e métodos:
            final: não pode ser alterado, sobrescrito.
            static: pertence a classe, não aos objetos.
            abstract: usada apenas em métodos de classes abstratas.
                contém apenas a assinatura, o corpo é definido na subclasse.
            transient: não são serializáveis.
            synchronized: uma thread por vez.
            volatile: permite visualizar o valor real (mesmo valor no mesmo instante),
                Não salva o cache local do atributo.
                Utiliza a memória principal.
                Importante para operações com threads. 
        */
    }
}