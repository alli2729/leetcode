/*
leetcode.com
*136. Single Number
Given a non-empty array of integers nums,
every element appears twice except for one. Find that single one.
*/
int singleNumber(List<int> nums) {
  return nums.fold(0, (prev, next) => prev ^ next);
}
