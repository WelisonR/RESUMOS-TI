# Problema 3 - Sorting

*   Link: 

*   Solução:

``` java
class Solution {
    // A classe interna pode ser pública, privada, protegrida ou package-private 
    class Node implements Comparable<Node>{
        int number, numberOfOnes;
        
        Node(int _number) {
            number = _number;
            // numberOfOnes = Integer.bitCount(number);
            // Método toBinaryString parece interessante também!
            numberOfOnes = 0;
            int qtBits = (int)(Math.log(number)/Math.log(2) + 1);
            for(int i = 0; i < qtBits; i++) {
                if((number & (1 << i)) > 0) {
                    numberOfOnes++;
                }
            }
        }
        
        @Override
        public int compareTo(Node compareNode) {
            if(this.numberOfOnes == compareNode.numberOfOnes) {
                return this.number - compareNode.number;
            }
            // Ordem crescente
            return this.numberOfOnes - compareNode.numberOfOnes;
        }
    }

    public int[] sortByBits(int[] arr) {
        ArrayList<Node> nodes = new ArrayList<Node>();
        for(int i = 0; i < arr.length; i++) {
            nodes.add(new Node(arr[i]));
        }
        
        Collections.sort(nodes);
        
        int i = 0;
        int[] ans = new int[arr.length];
        for(Node node : nodes) {
            ans[i++] = node.number;
        }
        return ans;
    }
}
```