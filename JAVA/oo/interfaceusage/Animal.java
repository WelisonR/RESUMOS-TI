package oo.interfaceusage;

// interface é uma "classe totalmente abstrata",
// estabelece uma espécie de "contrato" de implementação (implements)
// agrupa assinatura de métodos relacionados
// interface pode extender outra(s) interface(s)
// interface pode conter métodos abstratos, default e estáticos
// por padrão, os métodos são abstratos e públicos
// interface pode conter valores constantes, que serão public, static e final
// como a interface não pode ser usada para criar objetos, não tem construtor
// como java não suporta herança múltipla, uma classe que implementa várias interfaces é uma alternativa
public interface Animal {
    public static final String animalSample = "Penguin";

    public void animalSound();
    public void sleep();
}