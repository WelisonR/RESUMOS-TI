package basics;

public class JavaLoop {
    public static void main(String[] args) {
        int max = 5, it;

        // while loop
        it = 0;
        while(++it < max) {
            System.out.println("While loop! " + it);
        }

        // do while loop
        it = 0;
        do {
            System.out.println("Do while loop! " + it);
        } while(it++ < max);

        // for loop
        for(it = 0; it < max; it++) {
            System.out.println("For loop! " + it);
        }

        // forEach loop
        String[] heros = {"Batman", "Superman", "Mulher-maravilha", "Aquaman"};

        for(String hero : heros) {
            if(hero == "Aquaman") {
                break;
            }
            else if(hero == "Superman") {
                continue;
            }
            else {
                System.out.println(hero);
            }
        }

        // label em loop
        outerloop:
        for(int i = 0; i < 3; i++) {
            for(int j = 0; j < 3; j++) {
                System.out.println(i+j);
                if(i+j == 4) {
                    break outerloop;
                }
            }
        }
    }
}