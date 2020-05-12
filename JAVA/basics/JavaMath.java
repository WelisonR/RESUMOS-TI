package basics;

// Referência BigInteger: https://www.geeksforgeeks.org/biginteger-class-in-java/
import java.math.BigInteger;
import java.util.Random;

public class JavaMath {
    public static void main(String[] args) {
        BigInteger y = new BigInteger("100000000");
        BigInteger z;
        z = BigInteger.valueOf(10);

        // Há centenas de métodos para BigInteger
        System.out.println("Soma BigInteger: " + y.add(z));
        if(z.compareTo(y) < 0) { // retorno: -1(menor), 0(igual), 1(maior)
            System.out.println("z < y: " + z + " < "+ y);
        }
        System.out.println("Conversão BigInteger para long: " + y.longValue());

        // Operações matemáticas
        int a = 1000, b = 3100;
        Random r = new Random();

        System.out.println("Mínimo: " + Math.min(a, b));
        System.out.println("Máximo: " + Math.max(a, b));
        System.out.println("Raiz quadrada: " + Math.sqrt(a));
        System.out.println("Valor absoluto: " + Math.abs(-4.7));
        System.out.println("Valor randômico: " + (r.nextInt(b - a + 1) + a)); // inclusivo
        System.out.println("Valor float aleatório: " + Math.random());
    }
}

