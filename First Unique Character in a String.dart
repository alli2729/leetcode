/*
leetcode.com
*387. First Unique Character in a String
Given a string s, find the first non-repeating character in it and
return its index. If it does not exist, return -1.
*/
int firstUniqChar(String str) {
  if (str.isEmpty) return -1;
  for (var i = 0; i < str.length; i++) {
    bool found = true;
    for (var j = 0; j < str.length; j++) {
      if (i != j && str[i] == str[j]) {
        found = false;
        break;
      }
    }
    if (found) return i;
  }
  return -1;
}
