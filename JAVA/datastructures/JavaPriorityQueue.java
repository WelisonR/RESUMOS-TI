package datastructures;

import java.util.*;

public class JavaPriorityQueue {
    public static void main(String[] args) {
        // PriorityQueue não permite nulo
        // public poll(): This method retrieves and removes the head of this queue, or returns null if this queue is empty.
        // PriorityQueue(): capacidade default é 11, que é expandida
        PriorityQueue<Integer> pQueue = new PriorityQueue<Integer>(Collections.reverseOrder()); // max PriorityQueue, novo construtor

        for(int i = 0; i < 15; i++) {
            pQueue.add(i);
        }

        Integer val = null;
        while((val = pQueue.poll())!= null) {
            System.out.println("Valor extraído da heap: " + val);
        }

        System.out.println("Elemento do topo: " + pQueue.peek());
    }
}