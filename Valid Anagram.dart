/*
leetcode.com
*242. Valid Anagram
Given two strings s and t, return true if t is an anagram of s,
and false otherwise.
An Anagram is a word or phrase formed by rearranging the letters of a
different word or phrase, typically using all the original letters exactly once.
*/
bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  List<String> strS = s.split('')..sort();
  List<String> strT = t.split('')..sort();

  for (var i = 0; i < strT.length; i++) {
    if (strS[i] != strT[i]) {
      return false;
    }
  }
  return true;
}
/*
* return equlity of strings
bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  List<String> strS = s.split('')..sort();
  List<String> strT = t.split('')..sort();

  return strS.join('') == strT.join('');
}
*/
