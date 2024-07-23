/*
leetcode.com
*217. Contains Duplicate
Given an integer array nums, return true if any value appears at least twice
in the array, and return false if every element is distinct.
*/
//* implementing Set
bool containsDuplicate(List<int> nums) {
  Set seen = {};
  for (var item in nums) {
    if (seen.contains(item)) {
      return true;
    } else {
      seen.add(item);
    }
  }
  return false;
}
/*
* sort first
bool containsDuplicate(List<int> nums) {
  nums.sort();
  for (var i = 0; i < nums.length - 1; i++) {
    if (nums[i] == nums[i + 1]) {
      return true;
    }
  }
  return false;
}
*/
