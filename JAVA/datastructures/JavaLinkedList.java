package datastructures;

import java.util.*;

// Serve como lista encadeada, duplamente encadeada, fila
public class JavaLinkedList {
    public static void main(String[] args) {
        // Lista duplamente encadeada
        LinkedList<String> obj = new LinkedList<String>();

        // Métodos são O(1)
        obj.add("Walle");
        obj.add("Walle-sama");
        obj.addFirst("Wally");
        obj.addLast("Weli");
        obj.removeFirst();
        obj.removeLast();

        // Método O(n)
        obj.remove("Walle-sama");

        if(obj.contains("Walle")) {
            System.out.println("Minha lista duplamente encadeada: " + obj);
            System.out.println("Tamanho: " + obj.size());

            // get e set
            // Object element = obj.get(0);
            // Primeiro e último elemento (não remove)
            String first = obj.peekFirst();
            String last = obj.peekLast();

            System.out.println("Primeiro e último: " + first + ' ' + last);
            obj.set(0, "Wallyzinho");
        }

        System.out.println("Minha lista final: " + obj);

        String myFinalObj = obj.pop();
        System.out.println("Último sobrevivente: " + myFinalObj);
        obj.clear();
    }
}