package oo.polymorphism;

// Polimorfismo:
// Em animal (superclasse), há uma definição do método animalSound(),
// porém, a implementação pode assumir diferentes formas (polimorfismo)
// a depender do animal (subclasse)
public class Pig extends Animal {
    // sobrescrita
    public void animalSound() {
        System.out.println("The pig says: wee wee");
    }
}