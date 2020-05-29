package datastructures;

import java.util.ArrayList;
import java.util.Collections;

public class JavaArrayList {
    public static void main(String[] args) {
        // Similar ao vector do C++
        ArrayList<String> cars = new ArrayList<String>();

        // Adiciona itens ao Array
        cars.add("Volvo");
        cars.add("BMW");
        cars.add("Ford");
        
        // Troca o valor do item de índice 0
        cars.set(0, "Walle");
        // Remove o último de índice 2
        cars.remove(2);
        
        System.out.println("Tamanho da ArrayList: " + cars.size());
        System.out.println("ArrayList de carros: " + cars);
        System.out.println("Carro número 0: " + cars.get(0));

        // Ordena a ArrayList
        Collections.sort(cars);

        for(String car : cars) {
            System.out.println("Carro: " + car);
        }
        
        // Remove todos os elementos da ArrayList
        cars.clear();
    }
}