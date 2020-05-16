# Problema 1 - HashMap

*   Link: https://leetcode.com/problems/two-sum/submissions/

*   Solução:

```java
class Solution {
    public int[] twoSum(int[] nums, int target) {
        HashMap<Integer, Integer> map = new HashMap<>();
        for(int i = 0;  i < nums.length; i++) {
            int complement = target-nums[i];
            int complementPosition = map.getOrDefault(complement, -1);
            if(complementPosition != -1) {
                return new int[] {complementPosition, i};
            }
            map.put(nums[i], i);
        }
        
        return null;
    }
}
```