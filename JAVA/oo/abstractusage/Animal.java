package oo.abstractusage;

// Não é possível criar uma instância "Animal", deve herdar
abstract class Animal {
    // Não tem corpo, abstract é utilizado apenas em classe abstrata
    // Corpo do método é definido na subclasse
    public abstract void animalSound();

    public void sleep() {
        System.out.println("Zzz");
    }
}