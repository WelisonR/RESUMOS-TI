package basics;

public class Method {
    // Método de classe sem parâmetros e sem retorno
    static void myMethod() {
        System.out.println("Sample method!");
    }

    // Método de classe que recebe uma String e retorna outra
    static String myMethod2(String firstName) {
        return firstName + "-sama!";
    }

    public static void main(String[] args) {
        myMethod();
        myMethod();

        String name = myMethod2("Walle");
        System.out.println(name);
    }
}