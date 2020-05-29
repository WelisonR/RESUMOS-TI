package datastructures;

import java.util.*;

public class JavaStack {
    public static void main(String[] args) {
        Stack<Integer> stack = new Stack<Integer>();

        stack.push(1);
        stack.push(2);
        stack.pop();

        // Stack<Integer> stackClone = (Stack<Integer>)stack.clone();

        if(!stack.isEmpty()) {
            System.out.println("Elemento do topo: " + stack.peek());
        }

        stack.clear();
        System.out.println("Stack zerada! " + stack.size());
    }
}