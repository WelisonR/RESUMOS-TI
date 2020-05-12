package basics;

// Inline comments
/* Multi-line comments */
// java HelloWorld sample.txt -o outsample.bin
// args é indexado a partir do 0. (contrary to C giving you the name of the program)
public class HelloWorld {
    // Falta do args gera erro
    public static void main(String[] args) {
        System.out.println("Hello World!");
        
        // Lista de argumentos
        System.out.print("Argumentos: ");
        for (String s : args) {
            System.out.print(s + ' ');
        }
        System.out.print('\n');
    }
}