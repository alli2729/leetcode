/*
leetcode.com
*125. Valid Palindrome
A phrase is a palindrome if, after converting all uppercase letters into
lowercase letters and removing all non-alphanumeric characters,
it reads the same forward and backward.
Alphanumeric characters include letters and numbers.
*/
bool isPalindrome(String str) {
  List<String> strList =
      str.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '').split('');

  return strList.join('') == strList.reversed.join();
}
