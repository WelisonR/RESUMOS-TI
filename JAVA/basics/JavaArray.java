package basics;

public class JavaArray {
    public static void main(String[] args) {
        // 1D (ARRAY)
        int[] myNum = {10, 20, 30, 40, 50};
        myNum[0] = 11;
        for(int i = 0; i < myNum.length; i++) {
            System.out.println(myNum[i]);
        }

        // 2D (MATRIZ)
        int[][] myNumbers = { {1, 2, 3, 4}, {5, 6, 7, 8} };
        for(int i = 0; i < myNumbers.length; i++) {
            for(int j = 0; j < myNumbers[i].length; j++) {
                System.out.println(myNumbers[i][j]);
            }
        }
    }
}