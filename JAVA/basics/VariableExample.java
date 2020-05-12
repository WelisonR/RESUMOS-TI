package basics;

public class VariableExample {
    public static void main(String[] args) {
        // (não podem começar com números)
        // Tipos de dados primitivos em java
        float $myFloat = -12.03f; // 7 casas decimais, sem o f, default é double
        double myDouble = -12.03d; // 15 casas decimais
        char myChar = 'a';
        boolean myBool = true;
        // 1 bit representa o sinal
        byte myByte = 127; // 08 bits
        short myShort = 1000; // 16 bits
        int _myInt = -123; // 32 bits
        long myLong = 1700000000; // 64 bits

        // Notação científica
        float myFloat2 = 35e3f;
        double myDouble2 = 12E4d;

        // Tipos de dados não primitivos
        // Tipos não primitivos (começam com letra maiúscula) são criados pelo programador,
        // exceto o tipo String que o Java já define
        // Dados não primitivos podem ser null
        // Exemplos: Strings, Arrays, Classes, Interface...

        // Modificadores
        final int myInt2 = 15; // valor é final, constante

        System.out.println("Meu float: " + $myFloat); // concatenador é o '+'
        System.out.println("Notação científica: " + myFloat2);
    }
}