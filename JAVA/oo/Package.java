// import package.name.Class; // importa uma classe
// import package.name.*; // importa todo o pacote
package oo;

import java.util.Scanner;

public class Package {
    public static void main(String[] args) {
        Scanner myObj = new Scanner(System.in);
        System.out.print("Enter username: ");

        String userName = myObj.nextLine();
        System.out.println("Username is: " + userName);
        myObj.close();
    }
}