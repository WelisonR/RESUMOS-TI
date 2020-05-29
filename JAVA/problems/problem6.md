# Problema 6 - Binary Indexed Tree

*   Link: https://leetcode.com/problems/range-sum-query-mutable/

*   Solução:

```java
class NumArray {
    int[] nums;
    int[] BIT;

    public NumArray(int[] nums) {
        BIT = new int[nums.length+1];
        this.nums = new int[nums.length];
        for(int i = 0; i < BIT.length-1; i++) {
            update(i, nums[i]);   
        }
        this.nums = nums;
    }
    
    public void update(int i, int val) {
        i++;
        int diff = val-nums[i-1];
        for(int j = i; j < BIT.length; j += (j & -j)) {
            BIT[j] += diff;
        }
        nums[i-1] = val;
    }
    
    public int psq(int i) {
        int sum = 0; i++;
        for(int j = i; j > 0; j -= (j & -j)) {
            sum += BIT[j];
        }
        return sum;
    }
    
    public int sumRange(int i, int j) {
        return psq(j) - psq(i-1);
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = new NumArray(nums);
 * obj.update(i,val);
 * int param_2 = obj.sumRange(i,j);
 */
```