/*
leetcode.com
*69. Sqrt(x)
Given a non-negative integer x, return the square root of x rounded down to
the nearest integer. The returned integer should be non-negative as well.
You must not use any built-in exponent function or operator.
*/
int mySqrt(int num) {
  //binary search
  int start = 0, end = num;
  while (start <= end) {
    int mid = (start + end) ~/ 2;
    if (mid * mid < num) {
      start = mid + 1;
    } else if (mid * mid > num) {
      end = mid - 1;
    } else {
      return mid;
    }
  }
  return end;
}
