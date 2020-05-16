# Problema 2 - DFS

*   Link: https://leetcode.com/problems/maximum-depth-of-n-ary-tree/

*   Solução:

```java
/*
// Definition for a Node.
class Node {
    public int val;
    public List<Node> children;

    public Node() {}

    public Node(int _val) {
        val = _val;
    }

    public Node(int _val, List<Node> _children) {
        val = _val;
        children = _children;
    }
};
*/

class Solution {
    int ans = 0;
    
    // Nativamente, java não tem parâmetros opcionais
    public void dfs(Node u, int depth) {
        if(u == null) {
            return;
        }
        for(Node node : u.children) {
            dfs(node, depth+1);
        }
        ans = Math.max(ans, depth);
    }
    
    public int maxDepth(Node root) {
        // The only code that can be directly inside a class is declarations and static initializers.
        // Arrays.fill(visited, 0, visited.length, -1);
        dfs(root, 1);
        return ans;
    }
}
```