package oo.classobject;

public class JavaClass {
    public static void main(String[] args) {
        OtherClass myObj = new OtherClass();
        myObj.x = 10;

        System.out.println(myObj.x);
        // método estático (geral da classe), logo, acessado pelo nome da classe
        System.out.println(OtherClass.showName("Walle"));
    }
}
