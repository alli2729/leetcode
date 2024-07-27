/*
leetcode.com
*2239. Find Closest Number to Zero
Given an integer array nums of size n, return the number
with the value closest to 0 in nums. If there are multiple answers,
return the number with the largest value.
*/
int findClosestNumber(List<int> nums) {
  int num = nums[0];
  int dist = num.abs();
  for (var i = 1; i < nums.length; i++) {
    if (nums[i].abs() < dist) {
      num = nums[i];
      dist = nums[i].abs();
    }
    if (dist == nums[i].abs() && nums[i] > num) {
      num = nums[i];
    }
  }

  return num;
}
