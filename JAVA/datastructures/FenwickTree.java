package datastructures;

import java.util.*;

// Fenwick Tree: https://www.youtube.com/watch?v=CWDQJGaN1gY&t=13s
// Posições 2 e 3, isto é, 010 e 011. Se flipar o bit mais a esquerda de 3
// obteremos 010, isto é, o 2 é responsável (pai) do 3 na árvore.
public class FenwickTree {
    int[] BIT;

    public FenwickTree(int n) {
        BIT = new int[n+1]; // 0 é inutilizado
        Arrays.fill(BIT, 0); // default do int é zero, redundante
    }

    // Prefix Sum Query: soma no intervalo [1, k]
    int psq(int k) {
        // i & (-i), em que -i é ~i+1 (complemento de 2)
        // i = 4 => i&(-i) = 00...100 & 11...100
        int sum = 0;
        for(; k > 0; k -= (k & -k)) {
            sum += BIT[k];
        }
        return sum;
    }

    // Range Sum Query (soma no intervalo [a, b])
    int rsq(int a, int b) {
        return psq(b) - psq(a-1);
    }

    // Incrementa o k-ésimo valor por v (e propaga para cima)
    // Exemplo: posição 5 (101), bit mais a esquerda representa 1 (5 -> 6)
    // Posição 6 (110), bit mais a esquerda representa 2 (6 -> 8)...
    void add(int k, int v) {
        for(; k < BIT.length; k += (k & -k)) {
            BIT[k] += v;
        }
    }

    public static void main(String[] args) {
        int[] nums = {1, 2, 3, 4, 5};
        FenwickTree myTree = new FenwickTree(nums.length);
        for(int i = 1; i <= nums.length; i++) {
            myTree.add(i, nums[i-1]);
        }
        myTree.add(1, 1); // {2, 2, 3, 4, 5}

        System.out.println("Soma dos 5 primeiros elementos: " + myTree.psq(5));
        System.out.println("Soma dos 2 primeiros elementos: " + myTree.psq(2));
        System.out.println("Soma no intervalo [3, 5]: 3+4+5 = " + myTree.rsq(3, 5));
    }
}