/*
leetcode.com
*344. Reverse String
Write a function that reverses a string.
The input string is given as an array of characters str.
*/
void reverseString(List<String> str) {
  int i = 0, j = str.length - 1;
  while (i < j) {
    //swap i and j
    String tmp = str[i];
    str[i] = str[j];
    str[j] = tmp;
    // move i forward, and j backward
    i++;
    j--;
  }
}
