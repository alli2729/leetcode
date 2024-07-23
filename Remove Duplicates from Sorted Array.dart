/*
leetcode.com
*26. Remove Duplicates from Sorted Array
Given an integer array nums sorted in non-decreasing order,
remove the duplicates in-place such that each unique element appears only once.
he relative order of the elements should be kept the same.
Then return the number of unique elements in nums.
*/
int removeDuplicates(List<int> nums) {
  Set<int> uniq = {};
  for (var itme in nums) {
    uniq.add(itme);
  }
  nums.clear();
  for (var item in uniq) {
    nums.add(item);
  }
  return nums.length;
}
