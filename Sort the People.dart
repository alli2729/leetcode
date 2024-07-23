/*
leetcode.com
*2418. Sort the People
You are given an array of strings names, and an array heights that consists of
distinct positive integers. Both arrays are of length n.

For each index i, names[i] and heights[i]
denote the name and height of the ith person.

Return names sorted in descending order by the people's heights.
*/
List<String> sortPeople(List<String> names, List<int> heights) {
  int len = heights.length;
  // bubble sort
  for (var i = 1; i < len; i++) {
    for (var j = 0; j < len - 1; j++) {
      if (heights[j] < heights[j + 1]) {
        // swap heights
        int temp = heights[j];
        heights[j] = heights[j + 1];
        heights[j + 1] = temp;
        // swap names
        String tmp = names[j];
        names[j] = names[j + 1];
        names[j + 1] = tmp;
      }
    }
  }
  return names;
}
