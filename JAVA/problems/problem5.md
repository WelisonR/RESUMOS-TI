# Problema 5 - Binary Search Tree

*   Link: https://leetcode.com/problems/range-sum-of-bst

*   Solução:

```java
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {
    public int rangeSumBST(TreeNode root, int L, int R) {
        if(root == null) {
            return 0;
        }
      
        int left = 0,
        right = 0;

        if(root.val < L ) {
            right = rangeSumBST(root.right, L, R);
        }
        else if(root.val > R) {
            left = rangeSumBST(root.left, L, R);
        }
        else{
            return root.val + rangeSumBST(root.right, L, R) + rangeSumBST(root.left, L, R);
        }
        
        return left + right;
    }
}
```