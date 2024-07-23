/*
leetcode.com
*191. Number of 1 Bits
Write a function that takes the binary representation of
a positive integer and returns the number of set bits it has
(also known as the Hamming weight).
*/
int hammingWeight(int num) {
  if (num == 1) {
    return 1;
  }
  int setBits = 1;
  while (num > 1) {
    if (num % 2 == 1) {
      setBits++;
    }
    num = num ~/ 2;
  }
  return setBits;
}
