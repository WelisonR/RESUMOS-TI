# Problema 7 - BFS

*   Link:   

*   Solução: https://atcoder.jp/contests/abc168/tasks/abc168_d

```java
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int N = in.nextInt();
        int M = in.nextInt();
        List<Integer>[] adj = new ArrayList[N+1];
        for(int i = 0; i < N+1; i++) {
            adj[i] = new ArrayList<>();
        }
        for(int i = 0; i < M; i++) {
            int a = in.nextInt();
            int b = in.nextInt();
            adj[a].add(b);
            adj[b].add(a);
        }
        int[] parent = new int[N+1];
        Queue<Integer> myq = new ArrayDeque<>();
        myq.offer(1);
        while(myq.size() > 0) {
            int top = myq.poll();
            for(int i : adj[top]) {
                if(parent[i] == 0) {
                    parent[i] = top;
                    myq.add(i);
                }
            }
        }

        // Pelo enunciado, o grafo é sempre conectado
        System.out.println("Yes");
        for(int i = 2; i < N+1; i++) {
            System.out.println(parent[i]);
        }
    }
}
```