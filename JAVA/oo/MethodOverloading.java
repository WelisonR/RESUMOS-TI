package oo;

public class MethodOverloading {
    // sobrecarga (overloading): mesmo nome, diferentes parâmetros
    static int plusMethod(int x, int y) {
        return x + y;
    }

    static double plusMethod(double x, double y) {
        return x + y;
    }

    public static void main(String[] args) {
        int myNum = plusMethod(1, 2);
        double myDouble = plusMethod(4.5, 4.5);

        System.out.println("Meu inteiro: " + myNum + "; Meu double: " + myDouble);
    }
}