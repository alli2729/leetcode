/*
leetcode.com
*88. Merge Sorted Array
You are given two integer arrays nums1 and nums2,
sorted in non-decreasing order, and two integers m and n,
representing the number of elements in nums1 and nums2 respectively.
Merge nums1 and nums2 into a single array sorted in non-decreasing order.
*/
void merge(List<int> nums1, int m, List<int> nums2, int n) {
  nums1.removeRange(m, nums1.length);
  nums2.removeRange(n, nums2.length);
  nums1.addAll(nums2);
  nums1.sort();
}
