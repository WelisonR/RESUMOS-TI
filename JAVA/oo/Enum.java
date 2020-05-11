package oo;

// enum pode vir dentro da classe também
// representa um grupo de constantes
// interessante com switch case
// public, static e final
// Não cria objetos, não extende outras classes (mas pode implementar interfaces)
enum Level {
    LOW,
    MEDIUM,
    HIGH
}

public class Enum {
    public static void main(String[] args) {
        Level myVar = Level.MEDIUM;

        switch(myVar) {
            case LOW:
                System.out.println("Low level!");
                break;
            case MEDIUM:
                System.out.println("Medium level!");
                break;
            case HIGH:
                System.out.println("High level!");
                break;
        }

        // loop sobre os valores de um enum
        for(Level level : Level.values()) {
            System.out.println(level);
        }
    }
}