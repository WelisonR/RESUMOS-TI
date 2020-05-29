package datastructures;

import java.util.*;

public class JavaTreeSet {
    public static void main(String[] args) {
        // TreeSet (red-black tree): contém elementos únicos
        // Não permite elementos nulos
        // Elementos são únicos
        // Default: ordena crescente
        // add, remove e contains são O(log (n))
        TreeSet<String> myTreeSet = new TreeSet<String>();

        myTreeSet.add("Walle");
        myTreeSet.add("Walle");
        myTreeSet.add("Lucas");
        myTreeSet.add("Walle-sama");

        // Iterator
        Iterator<String> itr = myTreeSet.descendingIterator();

        while(itr.hasNext()) {
            System.out.println("Elemento: " + itr.next());
        }
    }
}