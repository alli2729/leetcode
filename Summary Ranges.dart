/*
leetcode.com
*228. Summary Ranges
You are given a sorted unique integer array nums.
A range [a,b] is the set of all integers from a to b (inclusive).
Return the smallest sorted list of ranges that cover all the numbers 
in the array exactly. That is, each element of nums is covered by 
exactly one of the ranges, 
and there is no integer x such that x is in one of the ranges but not in nums.
Each range [a,b] in the list should be output as:
  "a->b" if a != b
  "a" if a == b
*/
List<String> summaryRanges(List<int> nums) {
  List<String> result = [];
  int i = 0, j = 0;

  while (j < nums.length) {
    if (j != nums.length - 1 && nums[j + 1] == nums[j] + 1) {
      j++;
    } else if (i == j) {
      result.add("${nums[i]}");
      j++;
      i = j;
    } else {
      result.add("${nums[i]}->${nums[j]}");
      j++;
      i = j;
    }
  }
  return result;
}
