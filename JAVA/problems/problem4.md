# Problema 4 - Max PriorityQueue

*   Link: 

*   Solução:

```java
class Solution {
    public int lastStoneWeight(int[] stones) {
        PriorityQueue<Integer> pQueue = new PriorityQueue<Integer>(Collections.reverseOrder());
        
        for(int val : stones) {
            pQueue.add(val);
        }
        
        int a, b;
        while(pQueue.size() > 1) {
            a = pQueue.poll();
            b = pQueue.poll();
            
            if(a != b) {
                pQueue.add(a-b);
            }
        }
        
        return (pQueue.size() == 0 ? 0 : pQueue.poll());
    }
}
```