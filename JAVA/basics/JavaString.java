package basics;

public class JavaString {
    public static void main(String[] args) {
        String myString = "Some \" string example";
        String myString2 = " next";
        Integer myInt = 1000;

        // String + int = String
        System.out.println("Soma: " + myString + 10);
        System.out.println("Tamanho da string: " + myString.length());
        System.out.println("String minúscula: " + myString.toUpperCase());
        System.out.println("String maiúscula: " + myString.toLowerCase());
        System.out.println("Substring: " + myString.substring(5, 11));
        System.out.println("Indexof: " + myString.indexOf("example"));
        System.out.println("Concat: " + myString.concat(myString2)); // não altera a string original
        System.out.println("ToString: " + myInt.toString());
    }
}