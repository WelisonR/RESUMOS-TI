package datastructures;

import java.util.HashMap;

public class JavaHashMap {
    public static void main(String[] args) {
        // HashMap em java é baseado em array
        // Wrapper Classes: Byte, Short, Integer, Long, Float, Double, Boolean, Character
        HashMap<String, String> capitalCities = new HashMap<String, String>();

        capitalCities.put("England", "London");
        capitalCities.put("Germany", "Berlin");
        capitalCities.put("Norway", "Oslo");

        // Modifica o valor do hashmap da inglaterra
        capitalCities.put("England", capitalCities.get("England") + " (set)");

        // Remove "England" do HashMap O(1) (se não existir, não gera erros)
        capitalCities.remove("Norway");

        System.out.println("Tamanho do HashMap: " + capitalCities.size());
        System.out.println("Hashmap: " + capitalCities);
        System.out.println("Capital da Inglaterra: " + capitalCities.get("England"));

        for(String i : capitalCities.keySet()) {
            System.out.println("País: " + i + "; Capital: " + capitalCities.get(i));
        }

        // Remove todos os itens do HashMap O(n)
        capitalCities.clear();
    }
}