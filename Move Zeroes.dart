/*
leetcode.com
*283. Move Zeroes
Given an integer array nums, move all 0's to the end of it
while maintaining the relative order of the non-zero elements.
Note that you must do this in-place without making a copy of the array.
*/
void moveZeroes(List<int> nums) {
  int i = 0, j = i + 1;
  while (j < nums.length) {
    if (nums[i] == 0 && nums[j] != 0) {
      //swap i and j
      int tmp = nums[i];
      nums[i] = nums[j];
      nums[j] = tmp;
      i++;
      j = i + 1;
    } else if (nums[i] == 0 && nums[j] == 0) {
      j++;
    } else if (nums[i] != 0 && nums[j] != 0) {
      i++;
      j = i + 1;
    } else if (nums[i] != 0 && nums[j] == 0) {
      i++;
      j = i + 1;
    }
  }
}
/*  
* making result array
void moveZeroes(List<int> nums) {
  if (nums.length > 1) {
    List<int> res = [];
    int zero = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 0) {
        zero++;
      } else {
        res.add(nums[i]);
      }
    }
    for (var i = 0; i < zero; i++) {
      res.add(0);
    }
    nums.clear();
    nums.addAll(res);
  }
}
*/
/*
* numbers is not in order
void moveZeroes(List<int> nums) {
  int i = 0, j = nums.length - 1;
  while (j > i) {
    if (nums[i] == 0 && nums[j] > 0) {
      //swap i and j
      int tmp = nums[i];
      nums[i] = nums[j];
      nums[j] = tmp;
      i++;
      j--;
    } else if (nums[i] != 0 && nums[j] != 0) {
      i++;
    } else if (nums[i] == 0 && nums[j] == 0) {
      j--;
    }
  }
}
*/
