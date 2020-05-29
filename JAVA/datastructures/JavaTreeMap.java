package datastructures;

import java.util.*;

class Student {
    int rollno;
    String name, address;

    public Student(int rollno, String name, String address) {
        this.rollno = rollno;
        this.name = name;
        this.address = address;
    }

    public String toString() {
        return this.rollno + " "
            + this.name + " "
            + this.address;
    }
}

class Sortbyroll implements Comparator<Student> {
    public int compare(Student a, Student b) {
        // ordem crescente
        return a.rollno - b.rollno;
    }
}

public class JavaTreeMap {
    // TreeMap (Tree Map) é um exemplo de map sorteado
    // TreeMap é implementada por uma árvore red-black
    // Pode ser útil utilizar o seu construtor para sortear um Map
    // Default: ordena crescente
    // containsKey, get, put and remove (log(n))

    static void ExampleConstructor() {
        TreeMap<Student, Integer> treeMap = new TreeMap<Student, Integer>(new Sortbyroll());

        // Map to int keys
        treeMap.put(new Student(111, "Lucas", "London"), 2);
        treeMap.put(new Student(131, "Walle", "Nyc"), 3);
        treeMap.put(new Student(121, "Sama", "jaipur"), 1);

        // Display the TreeMap
        System.out.println("TreeMap: " + treeMap);
    }

    public static void main(String[] args) {
        System.out.println("TreeMap using TreeMap(Comparator) constructor");
        ExampleConstructor();
    }
}