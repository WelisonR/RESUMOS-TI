package basics;

public class Operator {
    public static void main(String[] args) {
        int x = 3, y = 1;

        // Operadores aritméticos
        int add = x + y;
        int sub = x - y;
        int mul = x * y;
        int div = x / y; // divisão inteira
        int mod = x % y;
        ++x;
        ++y;

        // Operadores de atribuição, operadores bit a bit
        int z = 10;
        z += 1;
        z -= 1;
        z *= 2;
        z /= 2;
        z %= 11;
        // bit a bit
        z &= 3;
        z |= 3; // ou lógico
        z ^= 3; // ou exclusivo lógico
        z >>= 1; // divisão, shift left (divide por 2 uma vez)
        z <<= 1; // multiplicação, shift right (multiplica por 2 uma vez)

        // Operadores de comparação
        boolean theta = (1 == 2);
        theta = (1 != 2);
        theta = (1 > 2);
        theta = (1 < 2);
        theta = (1 >= 2);
        theta = (1 <= 2);

        // Operadores lógicos
        boolean gama = (1 < 2 && 2 < 3);
        gama = (1 < 2 || 2 < 3);
        gama = !(1 < 2);
    }
}