package oo.nestedclass;

public class Main {
    // static: é possível utilizar a classe interna sem criar um objeto da classe externa
    public static void main(String[] args) {
        NestedClass myOuter = new NestedClass();
        NestedClass.InnerClass myInner = myOuter.new InnerClass();

        System.out.println(myInner.y + myOuter.x);
        System.out.println("Acesso a classe externa: " + myInner.myInnerMethod());
    }
}