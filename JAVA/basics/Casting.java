package basics;

public class Casting {
    public static void main(String[] args) {
        // Conversão automática
        // byte -> short -> char -> int -> long -> float -> double
        int myInt = 10;
        double myDouble = myInt;

        // Conversão manual
        // double -> float -> long -> int -> char -> short -> byte
        double myDouble2 = 9.81;
        int myInt2 = (int) myDouble2;
    }
}