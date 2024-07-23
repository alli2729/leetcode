/*
leetcode.com
*268. Missing Number
Given an array nums containing n distinct numbers in the range [0, n],
return the only number in the range that is missing from the array.
*/
int missingNumber(List<int> nums) {
  nums.sort();
  nums.add(nums.first);

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != i) {
      return i;
    }
  }
  return -1;
}
