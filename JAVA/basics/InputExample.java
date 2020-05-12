package basics;

import java.util.Scanner;

// Scanner é encontrada no pacote java.util
public class InputExample {
    public static void main(String[] args) {
        Scanner myObj = new Scanner(System.in);
        System.out.print("Enter name, age and salary: ");
        
        String name = myObj.nextLine();
        int age = myObj.nextInt();
        double salary = myObj.nextDouble();

        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Salary: " + salary);
        
        myObj.close();

        /*
        Tipos de entrada:
            nextBoolean();
            nextByte();
            nextDouble();
            nextFloat();
            nextInt();
            nextLine();
            nextLong();
            nextShort();
        */

    } 
}