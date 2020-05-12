package basics;

public class JavaExcepcion {
    
    public static void main(String[] args) {
        tryCatchFinally();
        throwKeyword(18);
        try {
            throwsKeyword(17);
        } catch(Exception e) {
            System.out.println(e);
        } 
    }

    // É possível utilizar a palavra-chave "throws" para delegar
    // a responsabilidade de tratamento de acesso a quem chamou o método
    // Unchecked Exception: sob o controle, corrigir o código.
    // Error: não é possível fazer nada, erros como StackOverflowError
    public static void throwsKeyword(int age) throws ArithmeticException {
        if(age < 18) {
            System.out.println("Acesso negado!");
            throw new ArithmeticException("Acesso negado - restrito a maiores de 18 anos.");
        }
        else {
            System.out.println("Acesso garantido!");
        }
    }

    public static void throwKeyword(int age) {
        if(age < 18) {
            // throw é utilizado junto a um tipo de exceção
            System.out.println("Acesso negado!");
            throw new ArithmeticException("Acesso negado - restrito a maiores de 18 anos.");
        }
        else {
            System.out.println("Acesso garantido!");
        }
    }

    public static void tryCatchFinally() {
        try {
            int x = 5, y = 0;
            int result = x/y;
            System.out.println("Deu certo!");
        } catch(Exception e) {
            System.out.println(e);
            System.out.println("Deu errado!");
            // throw e; // rethrowing the exception
        }
        finally {
            System.out.println("Procedimento executado!");
        }
    }

}