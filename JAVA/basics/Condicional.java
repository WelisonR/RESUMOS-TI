package basics;

public class Condicional {
    public static void main(String[] args) {
        int x = 18, y = 20;

        // if, else if, else
        if(x > y) {
            System.out.println("x é maior que y!");
        }
        else if (x == y) {
            System.out.println("x é igual a y!");
        }
        else {
            System.out.println("x é menor que y!");
        }

        // Operador ternário
        int gt = (x > y) ? x : y;
        System.out.println("O maior valor é " + gt);

        // switch
        int myCase = 1;
        switch(myCase) {
            case 0:
                System.out.println("myCase = 0");
                break;
            case 1:
                System.out.println("myCase = 1");
                System.out.println("Executado");
                break;
            default:
                System.out.println("Nenhuma situação detectada!");
        }
    }
}