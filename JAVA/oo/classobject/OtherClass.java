package oo.classobject;

public class OtherClass {
    // classe é um modelo para objetos, um objeto é uma instância de uma classe
    int x;

    // Caso o construtor não esteja definido, o java cria um construtor automaticamente
    // Construtores podem ter parâmetros também
    public OtherClass() {
        x = 5;
    }

    // Diferente do C++, java não possui um destructor
    // Isso ocorre pois o java utiliza o garbage colector

    public static String showName(String name) {
        return name + "-sama";
    }
}