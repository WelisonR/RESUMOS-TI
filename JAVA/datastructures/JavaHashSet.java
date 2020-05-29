package datastructures;

import java.util.*;

public class JavaHashSet {
    public static void main(String[] args) {
        // LinkedHashSet: mantém a ordem de inserção dos elementos
        // Hashset
        // Não há garantia quanto a ordem
        // Elementos duplicados não são permitidos
        // Permite elemento nulo
        // O(1) para add, remove, contains e size devido a hash table
        // Argumentos do Hashset:
        // capacidade inicial (default 16) e loadFactor (0.75, se atingir 75% da capacidade, rehash)
        HashSet<String> myHashSet = new HashSet<String>();

        myHashSet.add("India");
        myHashSet.add("Australia");
        myHashSet.add("South Africa");
        myHashSet.add("India");

        System.out.println(myHashSet);
        System.out.println("Contém india? " + myHashSet.contains("India"));

        myHashSet.remove("Australia");
        System.out.println("Após remoção da Australia: " + myHashSet);

        System.out.println("Percorrendo o hashset: ");
        Iterator<String> it = myHashSet.iterator();
        while(it.hasNext()) {
            System.out.println(it.next());
        }

        // clear é O(n)
    }
}