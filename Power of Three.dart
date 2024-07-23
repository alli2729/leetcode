/*
leetcode.com
*326. Power of Three
Given an integer n, return true if it is a power of three.
Otherwise, return false.
An integer n is a power of three,
if there exists an integer x such that n == 3^x.
*/
bool isPowerOfThree(int num) {
  if (num.isEven || num <= 0) return false;

  while (num != 1) {
    if (num % 3 > 0) {
      return false;
    }
    num = num ~/ 3;
  }
  return true;
}
